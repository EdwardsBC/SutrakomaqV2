from PySide6.QtWidgets import QMainWindow, QApplication, QMessageBox, QLineEdit
from models.ui_login import Ui_MainWindow as Ui_MainWindow_Login
from view.variables_globales import GlobalVar
from PySide6.QtGui import QIcon, QGuiApplication
from PySide6.QtCore import Qt
from sqlalchemy import create_engine, text
from datetime import datetime
from view.menu import Menu
import concurrent.futures
import json
import sys
import os

global_var = GlobalVar()

def resource_path(relative_path):
    """Obtén el path absoluto del archivo dependiendo de si estamos empaquetando o no."""
    base_path = getattr(sys, '_MEIPASS', os.path.dirname(os.path.abspath(__file__)))
    return os.path.join(base_path, relative_path)

def create_db_engine():
    with open(resource_path('config.json'), 'r') as config_file:
        db_config = json.load(config_file)
    connection_string = f"mysql+pymysql://{db_config['usuario']}:{db_config['password']}@{db_config['host']}:{db_config['port']}/{db_config['db']}"
    return create_engine(connection_string, pool_size=10, max_overflow=20, pool_timeout=30)

class Login(QMainWindow, Ui_MainWindow_Login):
    def __init__(self, engine):
        super().__init__()
        self.engine = engine
        self.setupUi(self)
        self.load()

        self.password_visible = False

        self.pushButton.clicked.connect(self.login)        
        self.pushButton_2.clicked.connect(self.toggle_password_visibility)
        self.lineEdit.returnPressed.connect(self.login)
        self.lineEdit_2.returnPressed.connect(self.login)

    def load(self):
        self.lineEdit_2.setEchoMode(QLineEdit.Password)
        self.setWindowFlags(Qt.Window)
        self.setFixedSize(self.size())
        self.centerOnScreen()

    def toggle_password_visibility(self):
        if self.password_visible:
            self.lineEdit_2.setEchoMode(QLineEdit.Password)
        else:
            self.lineEdit_2.setEchoMode(QLineEdit.Normal) 

        self.password_visible = not self.password_visible

    def login(self):
        username = self.lineEdit.text()
        password = self.lineEdit_2.text()

        if self.authenticate_user(username, password):
            with concurrent.futures.ThreadPoolExecutor() as executor:
                executor.submit(self.registrarHistorial, global_var.id_secretaria)
            self.open_menu()
        else:
            QMessageBox.warning(self, "Login", "Usuario o Contraseña incorrecta!")

    def open_menu(self):
        self.registros = Menu(self.engine)
        self.registros.show()
        self.close()

    def authenticate_user(self, username, password):
        query = text("CALL sp_authenticate_user(:username, :password, @p_id, @p_usu);")
        with self.engine.begin() as conn:
            conn.execute(query, {"username": username, "password": password})
            result = conn.execute(text("SELECT @p_id AS id, @p_usu AS usu")).fetchone()

        if result and result.id:
            global_var.secretaria = result.usu
            global_var.id_secretaria = result.id
            return True
        return False

    def registrarHistorial(self, id_secretaria):
        fechaHora = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        detalle = "Ingreso exitoso al sistema"
        interaccion = "Ingreso"
        id_seccion = 1
        id_modulo = 1

        try:
            query = text("""
                CALL sp_insertar_historial(:id_secretaria, :id_seccion, :id_modulo, :interaccion, :fechaHora, :detalle)
            """)
            with self.engine.begin() as conn:
                conn.execute(query, {
                    "id_secretaria": id_secretaria,
                    "id_seccion": id_seccion,
                    "id_modulo": id_modulo,
                    "interaccion": interaccion,
                    "fechaHora": fechaHora,
                    "detalle": detalle
                })
        except Exception as e:
            print(f"Error al registrar en el historial: {e}")

    def centerOnScreen(self):
        if not hasattr(self, 'available_geometry'):
            self.available_geometry = QGuiApplication.primaryScreen().availableGeometry()
        self.move(self.available_geometry.center() - self.rect().center())

if __name__ == '__main__':
    app = QApplication(sys.argv)
    engine = create_db_engine()
    window = Login(engine)
    window.show()
    window.centerOnScreen()
    sys.exit(app.exec())