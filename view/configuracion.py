from PySide6.QtWidgets import QApplication, QMainWindow, QVBoxLayout, QWidget, QSizePolicy
from models.ui_configuracion import Ui_MainWindow as Ui_MainWindowConfiguracion
from view.permisos import Permisos
from view.historial import Historial
from view.variables_globales import GlobalVar
from database.connection import *

#=======================================================================================================#
class Configuracion(QMainWindow, Ui_MainWindowConfiguracion):
    global_var = GlobalVar()

    def __init__(self):
        super().__init__()
        
        self.setupUi(self)
        self.setMaximumSize(1366, 768)
        self.central_widget = QWidget()
        self.setCentralWidget(self.central_widget)
        self.layout = QVBoxLayout()
        self.central_widget.setLayout(self.layout)

        self.actionPermisos.triggered.connect(self.mostrar_permisos)
        self.actionHistorial.triggered.connect(self.mostrar_historial)

        self.actionIr_al_Men.triggered.connect(self.salir)

    def salir(self):
        from view.menu import Menu
        self.registros = Menu()
        self.registros.show()
        self.close()

    def mostrar_permisos(self):
        self.permisos = Permisos(self)
        self.layout.addWidget(self.permisos)
        self.permisos.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        self.layout.update()

    def mostrar_historial(self):
        self.historial = Historial(self)
        self.layout.addWidget(self.historial)
        self.historial.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        self.layout.update()