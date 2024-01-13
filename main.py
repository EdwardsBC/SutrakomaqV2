from PySide6.QtWidgets import QMainWindow, QApplication, QMessageBox, QLineEdit
from models.ui_login import Ui_MainWindow as Ui_MainWindow_Login
from view.variables_globales import GlobalVar
from PySide6.QtGui import QGuiApplication
from sqlalchemy import create_engine
from datetime import datetime
from PySide6.QtCore import Qt
from view.menu import Menu
import pandas as pd
import json
import sys

global_var = GlobalVar()

def create_db_engine():
    with open('config.json', 'r') as config_file:
        db_config = json.load(config_file)
    connection_string = f"mysql+pymysql://{db_config['usuario']}:{db_config['password']}@{db_config['host']}:{db_config['port']}/{db_config['db']}"
    return create_engine(connection_string)

class Login(QMainWindow, Ui_MainWindow_Login):
    def __init__(self, engine):
        super().__init__()
        self.engine = engine
        self.setupUi(self)
        self.load()
        self.pushButton.clicked.connect(self.login)

    def load(self):
        self.lineEdit_2.setEchoMode(QLineEdit.Password)
        self.setWindowFlags(Qt.Window)
        self.setFixedSize(self.size())
        self.centerOnScreen()

    def login(self):
        username = self.lineEdit.text()
        password = self.lineEdit_2.text()

        if self.authenticate_user(username, password):
            fechaHora = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            self.registrarHistorial(global_var.id_secretaria, 1, 1, "Ingreso", fechaHora, "Ingreso exitoso al sistema")

            self.registros = Menu(self.engine)
            self.registros.show()
            self.close()
        else:
            QMessageBox.warning(self, "Login", "Usuario o Contraseña incorrecta!")

    def authenticate_user(self, username, password):
        query = "SELECT * FROM usuarios WHERE usu = %s AND pass = %s"
        df = pd.read_sql(query, self.engine, params=(username, password))
        if not df.empty:
            global_var.secretaria = df.iloc[0]['usu']
            global_var.id_secretaria = df.iloc[0]['id']
            return True
        return False

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
    app = QApplication(sys.argv)
    engine = create_db_engine()  # Create the engine once and pass it to the Login class
    window = Login(engine)
    window.show()
    window.centerOnScreen()
    sys.exit(app.exec())
