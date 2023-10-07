from PySide6.QtWidgets import QMainWindow, QApplication, QMessageBox, QLineEdit
from models.ui_login import Ui_MainWindow as Ui_MainWindow_Login
from view.variables_globales import GlobalVar
from PySide6.QtGui import QGuiApplication
from database.connection import *
from datetime import datetime
from PySide6.QtCore import Qt
from view.menu import Menu
import sys


global_var = GlobalVar()

class Login(QMainWindow, Ui_MainWindow_Login):


    def __init__(self):
        super().__init__()
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
        login_result = login(username, password)

        if login_result and login_result[0][3] == 'true':
            global_var.secretaria = login_result[0][2]
            global_var.id_secretaria = login_result[0][1]

            fechaHora = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            registrarHistorial(global_var.id_secretaria, 1, 1, "Ingreso", fechaHora, "Ingreso exitoso al sistema")

            self.registros = Menu()
            self.registros.show()
            self.close()
        else:
            QMessageBox.warning(self, "Login", "Usuario o Contraseña incorrecta!")


    def centerOnScreen(self):
        if not hasattr(self, 'available_geometry'):
            self.available_geometry = QGuiApplication.primaryScreen().availableGeometry()
        self.move(self.available_geometry.center() - self.rect().center())

if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = Login()
    window.show()
    window.centerOnScreen()
    sys.exit(app.exec())
