from PySide6.QtWidgets import QMainWindow, QMessageBox
from PySide6.QtCore import Qt
from models.ui_permisos import Ui_MainWindow as Ui_MainWindowPermisos
from view.variables_globales import GlobalVar
from database.connection import *
import pandas as pd
import json
import pandas as pd
from sqlalchemy import create_engine

class Permisos(QMainWindow, Ui_MainWindowPermisos):
    global_var = GlobalVar()
    def __init__(self,menu_configuracion):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)
        self.load()
        self.menu_configuracion = menu_configuracion
        self.lineEdit.setText(self.global_var.secretaria if self.global_var.secretaria else "Variable no definida")
        self.actionGrabar.triggered.connect(self.grabar)
        self.checkBox.stateChanged.connect(lambda state: self.setComboBoxEnabledState(2, 7, self.checkBox.isChecked()))
        self.comboBox.currentIndexChanged.connect(self.permisosSecretaria)
        self.actionSalir.triggered.connect(self.cerrar)
        
    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar la ventana de registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
        else:
            pass

    def load(self):
        self.checkBox.setChecked(True)
        secretarias = obtener_secretarias()
        for secretaria in secretarias:
            self.comboBox.addItem(secretaria[0])
        self.permisosSecretaria()

    def setComboBoxEnabledState(self, start, end, isEnabled):
        for i in range(start, end):
            comboBox = getattr(self, f'comboBox_{i}', None)
            if comboBox:
                comboBox.setEnabled(isEnabled)
                comboBox.setCurrentIndex(0)

    def permisosSecretaria(self):
        self.checkBox.setChecked(True)
        for i in range(2, 7):
            comboBox = getattr(self, f'comboBox_{i}')
            comboBox.setCurrentIndex(0)

        idSecretario = (self.comboBox.currentIndex() + 1)
        permisos = obtenerPermisos(idSecretario)
        self.df = pd.DataFrame(permisos, columns=['id', 'id_secretaria', 'id_seccion', 'id_modulo', 'nivel'])  

        if permisos is not None:
            for index, row in self.df.iterrows():
                if row['id_seccion'] == 3:
                    modulo = row['id_modulo']
                    nivel = row['nivel']

                    if modulo == 2:
                        self.comboBox_2.setCurrentIndex(nivel)
                    elif modulo == 3:
                        self.comboBox_3.setCurrentIndex(nivel)
                    elif modulo == 5:
                        self.comboBox_4.setCurrentIndex(nivel)
                    elif modulo == 8:
                        self.comboBox_5.setCurrentIndex(nivel)
                    elif modulo == 9:
                        self.comboBox_6.setCurrentIndex(nivel)   


    def grabar(self):
        idSecretario = (self.comboBox.currentIndex() + 1)
        df = pd.DataFrame(columns=['id_secretaria', 'id_seccion', 'id_modulo', 'nivel'])
        limpiarPermisosPorSecretaria(idSecretario)
        data = []

        if self.checkBox.isChecked():
            data.append([idSecretario, 3, 0, 0])

            for combo, third_val in zip([self.comboBox_2, self.comboBox_3, self.comboBox_4, self.comboBox_5, self.comboBox_6], [2, 3, 5, 8, 9]):
                if combo.currentIndex() in [1, 2, 3, 4]:
                    data.append([idSecretario, 3, third_val, combo.currentIndex()])
                
        df = pd.concat([df, pd.DataFrame(data, columns=['id_secretaria', 'id_seccion', 'id_modulo', 'nivel'])]).reset_index(drop=True)

        with open('config.json', 'r') as f:
            config = json.load(f)
        engine = create_engine(f"mysql+pymysql://{config['usuario']}:{config['password']}@{config['host']}:{config['port']}/{config['db']}")

        df.to_sql('permisos', con=engine, index=False, if_exists='append')

        engine.dispose()
        QMessageBox.information(self, "Exito", "Los permisos se guardaron correctamente.")