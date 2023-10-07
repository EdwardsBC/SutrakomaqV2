from PySide6.QtWidgets import QApplication, QMainWindow, QVBoxLayout, QWidget, QSizePolicy, QTableWidgetItem, QMessageBox
from PySide6.QtCore import Qt
from models.ui_historial import Ui_MainWindow as Ui_MainWindowHistorial
from view.variables_globales import GlobalVar
from database.connection import *

#=======================================================================================================#
class Historial(QMainWindow, Ui_MainWindowHistorial):
    global_var = GlobalVar()
    def __init__(self,menu_configuracion):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)
        
        self.load()
        self.actionSalir.triggered.connect(self.cerrar)

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar el listado actual?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
        else:
            pass 

    def load(self):
        self.listar()


    def listar(self):
        sp = "sp_listarHistorial()"
        historial = Listar(sp)

        if len(historial) > 0:
            self.tableWidget.setRowCount(len(historial))
            self.tableWidget.setColumnCount(len(historial[0]))
            self.tableWidget.setHorizontalHeaderLabels([])

            for row_idx, row_data in enumerate(historial):
                for col_idx, cell_data in enumerate(row_data):
                    item = QTableWidgetItem(str(cell_data))
                    self.tableWidget.setItem(row_idx, col_idx, item)

                    item.setText(str(cell_data))

            self.tableWidget.resizeColumnsToContents()
        else:
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")