from PySide6.QtWidgets import QMainWindow, QMessageBox, QApplication
from models.ui_menu import Ui_MainWindow as Ui_MainWindow_Menu
from view.menu_contabilidad import MenuContabilidad
from view.menu_registros import MenuRegistros
from view.variables_globales import GlobalVar
from view.configuracion import Configuracion
from PySide6.QtGui import QGuiApplication
from sqlalchemy import create_engine
from datetime import datetime
import pandas as pd
import json
import sys

def create_db_engine():
    with open('config.json', 'r') as config_file:
        db_config = json.load(config_file)
    connection_string = f"mysql+pymysql://{db_config['usuario']}:{db_config['password']}@{db_config['host']}:{db_config['port']}/{db_config['db']}"
    return create_engine(connection_string)

class Menu(QMainWindow, Ui_MainWindow_Menu):
    global_var = GlobalVar()

    def __init__(self, engine):
        super().__init__()
        self.engine = engine
        self.setupUi(self)

        self.pushButton.clicked.connect(self.mostrar_registros)
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
                    self.func_result.centerOnScreen()
                    self.close()
            if msg_exito:
                self.registrarHistorial(self.global_var.id_secretaria, permisos_idx, 1, "Ingreso", fechaHora, msg_exito)
            elif msg_en_proceso:
                QMessageBox.information(self, "Alerta", msg_en_proceso)
        else:
            QMessageBox.information(self, "Alerta", "Usted no cuenta con los permisos necesarios.")

    def mostrar_configuracion(self):
        self.mostrar(2, Configuracion, "Ingreso exitoso a Configuracion")

    def mostrar_registros(self):
        self.mostrar(3, MenuRegistros, "Ingreso exitoso a Registros", "Mensaje de alerta")

    def mostrar_contabilidad(self):
        self.mostrar(5, MenuContabilidad, "Ingreso exitoso a Contabilidad")

    def mostrar_defensa(self):
        self.mostrar(6, None, None, "En proceso....")

    def verificar_permisos(self, id_secretaria, id_seccion, id_modulo, nivel):
        query = """
        SELECT * 
        FROM permisos
        WHERE id_secretaria = %s AND id_seccion = %s AND id_modulo = %s AND nivel = %s;
        """
        df_permisos = pd.read_sql(query, self.engine, params=(id_secretaria, id_seccion, id_modulo, nivel))
        return df_permisos
    
    def registrarHistorial(self, id_secretaria, id_seccion, id_modulo, interaccion, fechaHora, detalle):
        data = {
            'id_secretaria': [str(id_secretaria)],
            'id_seccion': [str(id_seccion)],
            'id_modulo': [str(id_modulo)],
            'interaccion': [interaccion],
            'fechaHora': [fechaHora], 
            'detalle': [detalle]
        }
        df_historial = pd.DataFrame(data)
        df_historial.to_sql('historial', con=self.engine, if_exists='append', index=False)

    def centerOnScreen(self):
        if not hasattr(self, 'available_geometry'):
            self.available_geometry = QGuiApplication.primaryScreen().availableGeometry()
        self.move(self.available_geometry.center() - self.rect().center())

if __name__ == '__main__':
    engine = create_db_engine()
    app = QApplication(sys.argv)
    window = Menu(engine)
    window.show()
    window.centerOnScreen()
    sys.exit(app.exec_())