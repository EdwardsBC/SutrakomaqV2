from PySide6.QtWidgets import QApplication,QMainWindow, QVBoxLayout, QWidget, QSizePolicy, QMessageBox
from models.ui_menu_registros import Ui_MainWindow as Ui_MainWindow_Menu_Registros
from view.inventario import ListarInventarios,RegistrarInventarios
from view.asistencias import ListarAsistencias,RegistrarAsitencias,RegistrarAsistenciasDirigentes
from view.dirigentes import ListarDirigentes,RegistrarDirigentes
from view.licencias import ListarLicencias,RegistrarLicencias
from view.afiliados import ListarAfiliados,RegistrarAfiliados
from view.variables_globales import GlobalVar
from database.connection import *
import sys

class MenuRegistros(QMainWindow, Ui_MainWindow_Menu_Registros):
    global_var = GlobalVar()
    def __init__(self):
        super().__init__()
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
        self.registros = Menu()
        self.registros.show()
        self.close()

    def permisos_listado(self, inicio, fin, *args):
        return [permisos(self.global_var.id_secretaria, 3, args[0], i) for i in range(inicio, fin + 1)]

    def mostrar(self, permisos_idx, func, msg_exito, msg_alerta, inicio=1, fin=4):
        permisos_req = self.permisos_listado(inicio, fin, permisos_idx)

        if any(len(permiso) > 0 for permiso in permisos_req):
            fechaHora = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            registrarHistorial(self.global_var.id_secretaria, 3, permisos_idx, "Ingreso", fechaHora, msg_exito)
            self.func = func(self)
            self.layout.addWidget(self.func)
            self.func.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
            self.layout.update()
        else:
            QMessageBox.information(self, "Alerta", msg_alerta)

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

if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = MenuRegistros()
    window.show()
    window.showMaximized()
    sys.exit(exec())