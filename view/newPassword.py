from models.ui_newpassword import Ui_MainWindow as Ui_MainWindowNewPassword
from PySide6.QtWidgets import QMainWindow, QMessageBox, QApplication
from view.variables_globales import GlobalVar
from PySide6.QtCore import Qt
from datetime import datetime
from sqlalchemy import text
import sys


class NewPassword(QMainWindow, Ui_MainWindowNewPassword):
    global_var = GlobalVar()
    
    def __init__(self, engine):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.engine = engine

        self.load()

        self.actionGrabar.triggered.connect(self.Grabar)
        self.actionSalir.triggered.connect(self.Salir)


    def obtener_secretarias(self):
        with self.engine.connect() as conn:
            try:
                # Llamar al procedimiento almacenado para obtener secretarias
                query = text("CALL sp_obtener_secretarias()")
                result = conn.execute(query)
                secretarias = result.fetchall()
                return secretarias
            except Exception as e:
                print(f"Error al obtener secretarias: {e}")
                return []

    def load(self):
        secretarias = self.obtener_secretarias()
        for secretaria in secretarias:
            self.comboBox.addItem(secretaria[0])

    def Grabar(self):
        # Obtener los datos necesarios
        usuario = self.comboBox.currentText()
        nueva_contraseña = self.lineEdit_2.text()
        contraseña_anterior = self.lineEdit.text()
        email = ""  # Campo vacío
        fecha_modificacion = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

        # Verificar si los campos están vacíos
        if not usuario or not nueva_contraseña or not contraseña_anterior:
            QMessageBox.warning(self, "Campos vacíos", "Por favor, complete todos los campos.")
            return

        try:
            with self.engine.connect() as conn:
                # Llamar al procedimiento almacenado para actualizar el usuario
                query = text("CALL sp_actualizar_usuario(:usuario, :nueva_pass, :contraseña_anterior, :email, :fecha_modificacion)")
                conn.execute(query, {
                    "usuario": usuario,
                    "nueva_pass": nueva_contraseña,
                    "contraseña_anterior": contraseña_anterior,
                    "email": email,
                    "fecha_modificacion": fecha_modificacion
                })
                conn.commit()

                QMessageBox.information(self, "Éxito", "Datos actualizados correctamente.")
                self.close()
                
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Error al actualizar los datos: {str(e)}")
    
    def Salir(self):
        self.close()
    
if __name__ == '__main__':
    app = QApplication(sys.argv)
    sys.exit(app.exec_())