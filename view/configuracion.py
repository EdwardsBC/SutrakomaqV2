from PySide6.QtWidgets import QApplication, QMainWindow, QVBoxLayout, QWidget, QSizePolicy
from models.ui_configuracion import Ui_MainWindow as Ui_MainWindowConfiguracion
from view.permisos import Permisos
from view.historial import Historial
from view.variables_globales import GlobalVar
from PySide6.QtGui import QGuiApplication

import pandas as pd
from sqlalchemy import create_engine
import json
from datetime import datetime
import sys

def create_db_engine():
    with open('config.json', 'r') as config_file:
        db_config = json.load(config_file)
    connection_string = f"mysql+pymysql://{db_config['usuario']}:{db_config['password']}@{db_config['host']}:{db_config['port']}/{db_config['db']}"
    return create_engine(connection_string)

class Configuracion(QMainWindow, Ui_MainWindowConfiguracion):
    global_var = GlobalVar()

    def __init__(self, engine):
        super().__init__()
        self.engine = engine 
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
        self.registros = Menu(self.engine)
        self.registros.show()
        self.close()

    def mostrar_permisos(self):
        self.permisos = Permisos(self, self.engine)
        self.layout.addWidget(self.permisos)
        self.permisos.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        self.layout.update()

    def mostrar_historial(self):
        self.historial = Historial(self, self.engine)
        self.layout.addWidget(self.historial)
        self.historial.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        self.layout.update()

    def centerOnScreen(self):
        if not hasattr(self, 'available_geometry'):
            self.available_geometry = QGuiApplication.primaryScreen().availableGeometry()
        self.move(self.available_geometry.center() - self.rect().center())

if __name__ == '__main__':
    engine = create_db_engine()
    app = QApplication(sys.argv)
    window = Configuracion(engine)
    window.show()
    window.centerOnScreen()
    window.showMaximized()
    sys.exit(app.exec_())