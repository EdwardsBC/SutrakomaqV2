from PySide6.QtWidgets import QApplication,QMainWindow, QVBoxLayout, QWidget, QSizePolicy, QMessageBox
from models.ui_menu_registros import Ui_MainWindow as Ui_MainWindow_Menu_Registros
from view.inventario import ListarInventarios,RegistrarInventarios
from view.asistencias import ListarAsistencias,RegistrarAsitencias,RegistrarAsistenciasDirigentes
from view.dirigentes import ListarDirigentes,RegistrarDirigentes
from view.licencias import ListarLicencias,RegistrarLicencias
from view.afiliados import ListarAfiliados,RegistrarAfiliados
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

class MenuRegistros(QMainWindow, Ui_MainWindow_Menu_Registros):
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

        self.actionLista_de_Afiliados.triggered.connect(self.mostrar_listarAfiliados)
        self.actionLista_de_Asistencias.triggered.connect(self.mostrar_listarAsistencias)
        self.actionLista_de_Dirigentes.triggered.connect(self.mostrar_listarDirigentes)
        self.actionLista_de_Inventario.triggered.connect(self.mostrar_listarInventario)
        self.actionLista_de_Licencias.triggered.connect(self.mostrar_listarLicencias)
        
        self.actionRegistro_de_Afiliados.triggered.connect(self.mostrar_registrarAfiliados)
        self.actionRegistro_de_Asistencias.triggered.connect(self.mostrar_registrarAsistencias)
        self.actionRegistro_de_Dirigentes.triggered.connect(self.mostrar_registrarDirigentes)
        self.actionRegistro_de_Inventario.triggered.connect(self.mostrar_registrarInventario)
        self.actionRegistro_de_Licencias.triggered.connect(self.mostrar_registrarLicencias)
        self.actionRegisitro_de_Asamblea.triggered.connect(self.mostrar_registrarAsamblea)

        self.actionIr_al_Men.triggered.connect(self.salir)

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
        permisos_req = self.verificar_permisos(self.global_var.id_secretaria, 3 ,permisos_idx, inicio, fin)

        if not permisos_req.empty:

            fechaHora = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            if func:
                self.func_result = func(self, self.engine)
                self.layout.addWidget(self.func_result)
                self.func_result.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
                self.func_result.show()
                
            if msg_exito:
                self.registrarHistorial(self.global_var.id_secretaria, 3, permisos_idx, "Ingreso", fechaHora, msg_exito)
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

    def mostrar_listarAfiliados(self):
        self.mostrar(2, ListarAfiliados, "Ingreso exitoso a Listado de Afiliados", "Usted no cuenta con los permisos necesarios.")

    def mostrar_listarAsistencias(self):
        self.mostrar(3, ListarAsistencias, "Ingreso exitoso a Listado de Asistencias", "Usted no cuenta con los permisos necesarios.")

    def mostrar_listarDirigentes(self):
        self.mostrar(5, ListarDirigentes, "Ingreso exitoso a Listado de Dirigentes", "Usted no cuenta con los permisos necesarios.")

    def mostrar_listarInventario(self):
        self.mostrar(8, ListarInventarios, "Ingreso exitoso a Listado de Inventario", "Usted no cuenta con los permisos necesarios.")
    
    def mostrar_listarLicencias(self):
        self.mostrar(9, ListarLicencias, "Ingreso exitoso a Listado de Licencias", "Usted no cuenta con los permisos necesarios.")

    def mostrar_registrarAfiliados(self):
        self.mostrar(2, RegistrarAfiliados, "Ingreso exitoso a Registro de Afiliados", "Usted no cuenta con los permisos necesarios.", 2, 4)

    def mostrar_registrarAsistencias(self):
        self.mostrar(3, RegistrarAsitencias, "Ingreso exitoso a Registro de Asistencias", "Usted no cuenta con los permisos necesarios.", 2, 4)

    def mostrar_registrarDirigentes(self):
        self.mostrar(5, RegistrarDirigentes, "Ingreso exitoso a Registro de Dirigentes", "Usted no cuenta con los permisos necesarios.", 2, 4)

    def mostrar_registrarInventario(self):
        self.mostrar(8, RegistrarInventarios, "Ingreso exitoso a Registro de Inventario", "Usted no cuenta con los permisos necesarios.", 2, 4)

    def mostrar_registrarLicencias(self):
        self.mostrar(9, RegistrarLicencias, "Ingreso exitoso a Registro de Licencias", "Usted no cuenta con los permisos necesarios.", 2, 4)

    def mostrar_registrarAsamblea(self):
        self.mostrar(3, RegistrarAsistenciasDirigentes, "Ingreso exitoso a Registro de Asistencias de dirigentes", "Usted no cuenta con los permisos necesarios.", 2, 4)

    def centerOnScreen(self):
        if not hasattr(self, 'available_geometry'):
            self.available_geometry = QGuiApplication.primaryScreen().availableGeometry()
        self.move(self.available_geometry.center() - self.rect().center())

if __name__ == '__main__':
    engine = create_db_engine()
    app = QApplication(sys.argv)
    window = MenuRegistros(engine)
    window.show()
    window.centerOnScreen()
    window.showMaximized()
    sys.exit(app.exec_())