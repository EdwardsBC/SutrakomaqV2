from PySide6.QtWidgets import QApplication,QMainWindow, QVBoxLayout, QWidget, QSizePolicy, QMessageBox
from models.ui_menu_contabilidad import Ui_MainWindow as Ui_MainWindow_Menu_Contabilidad
from view.cuotas import ListarCuotas,RegistrarCuotas
from view.ingresos_egresos import ListarIngresosEgresos,RegistrarIngresosEgresos
from view.recibos import ListarRecibos,RegistrarRecibos
from view.variables_globales import GlobalVar
from database.connection import *
import sys

class MenuContabilidad(QMainWindow, Ui_MainWindow_Menu_Contabilidad):
    global_var = GlobalVar()
    def __init__(self):
        super().__init__()
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
        self.registros = Menu()
        self.registros.show()
        self.close()

    def permisos_listado(self, inicio, fin, *args):
        return [permisos(self.global_var.id_secretaria, 5, args[0], i) for i in range(inicio, fin + 1)]

    def mostrar(self, permisos_idx, func, msg_exito, msg_alerta, inicio=1, fin=4):
        permisos_req = self.permisos_listado(inicio, fin, permisos_idx)

        if any(len(permiso) > 0 for permiso in permisos_req):
            fechaHora = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            registrarHistorial(self.global_var.id_secretaria, 5, permisos_idx, "Ingreso", fechaHora, msg_exito)
            self.func = func(self)
            self.layout.addWidget(self.func)
            self.func.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
            self.layout.update()
        else:
            QMessageBox.information(self, "Alerta", msg_alerta)

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

if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = MenuContabilidad()
    window.show()
    window.showMaximized()
    sys.exit(exec())