from PySide6.QtWidgets import QMainWindow, QMessageBox
from models.ui_menu import Ui_MainWindow as Ui_MainWindow_Menu
from view.configuracion import Configuracion
from view.menu_registros import MenuRegistros
from view.menu_reportes import reporteEjemplo1
from view.menu_contabilidad import MenuContabilidad
from view.variables_globales import GlobalVar
from database.connection import *

class Menu(QMainWindow, Ui_MainWindow_Menu):
    global_var = GlobalVar()

    def __init__(self):
        super().__init__()
        
        self.setupUi(self)

        self.pushButton.clicked.connect(self.mostrar_registros)
        self.pushButton_2.clicked.connect(self.mostrar_reportes)
        self.pushButton_3.clicked.connect(self.mostrar_contabilidad)
        self.pushButton_4.clicked.connect(self.mostrar_defensa)
        self.pushButton_5.clicked.connect(self.mostrar_configuracion)

        self.lineEdit.setText(self.global_var.secretaria if self.global_var.secretaria else "Variable no definida")

    def mostrar(self, permisos_idx, func=None, msg_exito=None, msg_en_proceso=None):
        permiso = permisos(self.global_var.id_secretaria, permisos_idx, 0, 0)
        if len(permiso) > 0:
            fechaHora = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            if func:
                self.func_result = func()
                if hasattr(self.func_result, 'showMaximized'):
                    self.func_result.showMaximized()
                    self.close()
            if msg_exito:
                registrarHistorial(self.global_var.id_secretaria, permisos_idx, 1, "Ingreso", fechaHora, msg_exito)
            elif msg_en_proceso:
                QMessageBox.information(self, "Alerta", msg_en_proceso)
        else:
            QMessageBox.information(self, "Alerta", "Usted no cuenta con los permisos necesarios.")

    def mostrar_configuracion(self):
        self.mostrar(2, Configuracion, "Ingreso exitoso a Configuracion")

    def mostrar_registros(self):
        self.mostrar(3, MenuRegistros, "Ingreso exitoso a Registros")

    def mostrar_reportes(self):
        self.mostrar(4, reporteEjemplo1, None, "En proceso....")

    def mostrar_contabilidad(self):
        self.mostrar(5, MenuContabilidad, "Ingreso exitoso a Contabilidad")

    def mostrar_defensa(self):
        self.mostrar(6, None, None, "En proceso....")
