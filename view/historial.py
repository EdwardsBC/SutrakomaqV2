from PySide6.QtWidgets import QApplication, QMainWindow, QVBoxLayout, QWidget, QSizePolicy, QTableWidgetItem, QMessageBox
from PySide6.QtCore import Qt
from models.ui_historial import Ui_MainWindow as Ui_MainWindowHistorial
from view.variables_globales import GlobalVar
import pandas as pd
#=======================================================================================================#
class Historial(QMainWindow, Ui_MainWindowHistorial):
    global_var = GlobalVar()
    def __init__(self,menu_configuracion, engine):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)
        
        self.engine = engine

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
        query = """
            SELECT h.id, h.detalle, s.secretaria, sec.seccion, m.modulo, h.interaccion, h.fechaHora
            FROM historial h
            INNER JOIN secretarias s ON h.id_secretaria = s.id
            INNER JOIN secciones sec ON h.id_seccion = sec.id
            INNER JOIN modulos m ON h.id_modulo = m.id
            ORDER BY h.id DESC;
        """
        df_historial = pd.read_sql(query, self.engine)

        if not df_historial.empty:
            num_columns = len(df_historial.columns)
            self.tableWidget.setColumnCount(num_columns)

            self.tableWidget.setRowCount(len(df_historial))

            for row_idx, row in df_historial.iterrows():
                for col_idx, cell_data in enumerate(row):
                    item = QTableWidgetItem(str(cell_data))
                    self.tableWidget.setItem(row_idx, col_idx, item)

                    item.setText(str(cell_data))

            self.tableWidget.resizeColumnsToContents()
        else:
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")