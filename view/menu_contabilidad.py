from PySide6.QtWidgets import QApplication,QMainWindow, QVBoxLayout, QWidget, QSizePolicy, QMessageBox
from models.ui_menu_contabilidad import Ui_MainWindow as Ui_MainWindow_Menu_Contabilidad
from view.cuotas import ListarCuotas,RegistrarCuotas
from view.ingresos_egresos import ListarIngresosEgresos,RegistrarIngresosEgresos
from view.recibos import ListarRecibos,RegistrarRecibos
from view.variables_globales import GlobalVar
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

class MenuContabilidad(QMainWindow, Ui_MainWindow_Menu_Contabilidad):
    global_var = GlobalVar()
    def __init__(self, engine):
        super().__init__()
        self.engine = engine 
        self.setupUi(self)

        self.setMaximumSize(1366,750)
        self.central_widget = QWidget()
        self.setCentralWidget(self.central_widget)
        self.layout = QVBoxLayout()
        self.central_widget.setLayout(self.layout)

        self.actionLista_de_Cuotas.triggered.connect(self.mostrar_listarCuotas)
        self.actionLista_de_Ingresos_y_Egresos.triggered.connect(self.mostrar_listarIngresosEgresos)
        self.actionLista_de_Recibos.triggered.connect(self.mostrar_listarRecibos)

        self.actionRegistro_de_Cuotas.triggered.connect(self.mostrar_registroCuotas)
        self.actionRegistro_de_Ingresos_y_Egresos.triggered.connect(self.mostrar_registroIngresosEgresos)
        self.actionRegistro_de_Recibos.triggered.connect(self.mostrar_registroRecibos)

        self.actionIr_al_Menu.triggered.connect(self.salir)

    def salir(self):
        from view.menu import Menu
        self.registros = Menu(self.engine)
        self.registros.show()
        self.close()

    def verificar_permisos(self, id_secretaria, id_seccion, id_modulo, inicio, fin):
        niveles = list(range(inicio, fin + 1))
        query = """
        SELECT * 
        FROM permisos
        WHERE id_secretaria = %s AND id_seccion = %s AND id_modulo = %s AND nivel IN %s;
        """
        df_permisos = pd.read_sql(query, self.engine, params=(id_secretaria, id_seccion, id_modulo, tuple(niveles)))
        return df_permisos

    def mostrar(self, permisos_idx, func, msg_exito, msg_alerta, inicio=1, fin=4):
        permisos_req = self.verificar_permisos(self.global_var.id_secretaria, 5 ,permisos_idx, inicio, fin)

        if not permisos_req.empty:

            fechaHora = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            if func:
                self.func_result = func(self, self.engine)
                self.layout.addWidget(self.func_result)
                self.func_result.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
                self.func_result.show()
                
            if msg_exito:
                self.registrarHistorial(self.global_var.id_secretaria, 5, permisos_idx, "Ingreso", fechaHora, msg_exito)
            elif msg_alerta:
                QMessageBox.information(self, "Alerta", msg_alerta)
        else:
            QMessageBox.information(self, "Alerta", "Usted no cuenta con los permisos necesarios.")

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

    def mostrar_listarCuotas(self):
        self.mostrar(4, ListarCuotas, "Ingreso exitoso a Listado de Cuotas", "Usted no cuenta con los permisos necesarios.")

    def mostrar_listarIngresosEgresos(self):
        self.mostrar(7, ListarIngresosEgresos, "Ingreso exitoso a Listado de Ingresos y Egresos", "Usted no cuenta con los permisos necesarios.")

    def mostrar_listarRecibos(self):
        self.mostrar(11, ListarRecibos, "Ingreso exitoso a Listado de Recibos", "Usted no cuenta con los permisos necesarios.")

    def mostrar_registroCuotas(self):
        self.mostrar(4, RegistrarCuotas, "Ingreso exitoso a Registro de Cuotas", "Usted no cuenta con los permisos necesarios.", 2, 4)

    def mostrar_registroIngresosEgresos(self):
        self.mostrar(7, RegistrarIngresosEgresos, "Ingreso exitoso a Registro de Ingresos y Egresos", "Usted no cuenta con los permisos necesarios.", 2, 4)

    def mostrar_registroRecibos(self):
        self.mostrar(11, RegistrarRecibos, "Ingreso exitoso a Registro de Recibos", "Usted no cuenta con los permisos necesarios.", 2, 4)

    def centerOnScreen(self):
        if not hasattr(self, 'available_geometry'):
            self.available_geometry = QGuiApplication.primaryScreen().availableGeometry()
        self.move(self.available_geometry.center() - self.rect().center())

if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = MenuContabilidad()
    window.show()
    window.showMaximized()
    sys.exit(exec())