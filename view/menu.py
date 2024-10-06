from PySide6.QtWidgets import QMainWindow, QMessageBox, QApplication
from models.ui_menu import Ui_MainWindow as Ui_MainWindow_Menu
from view.menu_contabilidad import MenuContabilidad
from view.menu_registros import MenuRegistros
from view.variables_globales import GlobalVar
from view.configuracion import Configuracion
from PySide6.QtGui import QGuiApplication
from datetime import datetime
from sqlalchemy import text
import concurrent.futures
import pandas as pd
import sys

class Menu(QMainWindow, Ui_MainWindow_Menu):
    global_var = GlobalVar()

    def __init__(self, engine):
        super().__init__()
        self.engine = engine
        self.setupUi(self)

        self.pushButton.clicked.connect(self.mostrar_registros)
        self.pushButton_2.clicked.connect(self.mostrar_reportes)
        self.pushButton_3.clicked.connect(self.mostrar_contabilidad)
        self.pushButton_4.clicked.connect(self.mostrar_defensa)
        self.pushButton_5.clicked.connect(self.mostrar_configuracion)

        self.lineEdit.setText(self.global_var.secretaria if self.global_var.secretaria else "Variable no definida")

    def mostrar(self, permisos_idx, func=None, msg_exito=None, msg_en_proceso=None):
        permiso = self.verificar_permisos(self.global_var.id_secretaria, permisos_idx, 0, 0)
        if not permiso.empty:
            fechaHora = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            if func:
                self.func_result = func(self.engine)
                if hasattr(self.func_result, 'showMaximized'):
                    self.func_result.showMaximized()
                    self.close()

            with concurrent.futures.ThreadPoolExecutor() as executor:
                executor.submit(self.registrarHistorial, self.global_var.id_secretaria, permisos_idx, 1, "Ingreso", fechaHora, msg_exito)

            if msg_exito:
                return
            elif msg_en_proceso:
                QMessageBox.information(self, "Alerta", msg_en_proceso)
        else:
            QMessageBox.information(self, "Alerta", "Usted no cuenta con los permisos necesarios.")

    def mostrar_configuracion(self):
        self.mostrar(2, Configuracion, "Ingreso exitoso a Configuración")

    def mostrar_registros(self):
        self.mostrar(3, lambda engine: MenuRegistros(engine), "Ingreso exitoso a Registros", "Mensaje de alerta")

    def mostrar_reportes(self):
        self.mostrar(4, None, None, "En proceso....")

    def mostrar_contabilidad(self):
        self.mostrar(5, lambda engine: MenuContabilidad(engine), "Ingreso exitoso a Contabilidad")

    def mostrar_defensa(self):
        self.mostrar(6, None, None, "En proceso....")

    def verificar_permisos(self, id_secretaria, id_seccion, id_modulo, nivel):
        try:
            query = text("""
                CALL sp_verificar_permisos(:id_secretaria, :id_seccion, :id_modulo, :nivel)
            """)
            with self.engine.connect() as conn:
                result = conn.execute(query, {
                    "id_secretaria": id_secretaria,
                    "id_seccion": id_seccion,
                    "id_modulo": id_modulo,
                    "nivel": nivel
                })
                df_permisos = pd.DataFrame(result.fetchall(), columns=result.keys())
            return df_permisos
        except Exception as e:
            print(f"Error al verificar permisos: {e}")
            return pd.DataFrame()

    def registrarHistorial(self, id_secretaria, id_seccion, id_modulo, interaccion, fechaHora, detalle):
        try:
            query = text("""
                CALL sp_insertar_historial(:id_secretaria, :id_seccion, :id_modulo, :interaccion, :fechaHora, :detalle)
            """)
            with self.engine.begin() as conn:
                conn.execute(query, {
                    "id_secretaria": id_secretaria,
                    "id_seccion": id_seccion,
                    "id_modulo": id_modulo,
                    "interaccion": interaccion,
                    "fechaHora": fechaHora,
                    "detalle": detalle
                })
        except Exception as e:
            print(f"Error al registrar en el historial: {e}")

    def centerOnScreen(self):
        if not hasattr(self, 'available_geometry'):
            self.available_geometry = QGuiApplication.primaryScreen().availableGeometry()
        self.move(self.available_geometry.center() - self.rect().center())

if __name__ == '__main__':
    app = QApplication(sys.argv)
    sys.exit(app.exec_())
