from models.ui_registro_dirigentes import Ui_MainWindow as Ui_MainWindow_RegistroDirigentes
from models.ui_lista_dirigentes import Ui_MainWindow as Ui_MainWindow_ListaDirigentes
from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QFileDialog, QWidget, QSizePolicy, QVBoxLayout
from PySide6.QtGui import QIntValidator
from database.connection import *
from datetime import date, timedelta
from PySide6.QtCore import QDate,Qt
from jinja2 import Template
import datetime
import pdfkit
import os

class ListarDirigentes(QMainWindow, Ui_MainWindow_ListaDirigentes):
    def __init__(self,menu_registros):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.load()

        self.menu_registros = menu_registros

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionExportar.triggered.connect(self.exportarExcel)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)

        self.lineEdit.textChanged.connect(self.buscar)
        self.tableWidget.itemDoubleClicked.connect(self.enviarSeleccionado)

    def load(self):
        self.tableWidget.setColumnHidden(0, True)
        self.tableWidget.setColumnHidden(8, True)
        self.listar()
        self.tableWidget.resizeColumnsToContents()
        
    def listar(self):
        sp = "sp_listarDirigentes()"
        dirigentes = Listar(sp)

        if len(dirigentes) > 0:
            self.tableWidget.setRowCount(len(dirigentes))
            self.tableWidget.setColumnCount(len(dirigentes[0]))
            self.tableWidget.setHorizontalHeaderLabels([])

            for row_idx, row_data in enumerate(dirigentes):
                for col_idx, cell_data in enumerate(row_data):
                    item = QTableWidgetItem(str(cell_data))
                    self.tableWidget.setItem(row_idx, col_idx, item)

                    if col_idx in [4, 5]:  
                        fecha_str = cell_data.strftime("%d-%m-%Y")
                        item.setText(fecha_str)
                    elif col_idx == 7: 
                        if cell_data == 1:
                            item.setText("VIGENTE")
                        else:
                            item.setText("RETIRADO")
                            
            self.tableWidget.resizeColumnsToContents()
        else:
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo Registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarDirigentes()
        else:
            pass

    def exportarExcel(self):
        respuesta = QMessageBox.question(self, "Exportar a Excel", "¿Desea exportar la lista a Excel?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            print("Exportar a Excel")
        else:
            pass 

    def exportarPdf(self):
        respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar la lista a PDF?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            results = []
            for row in range(self.tableWidget.rowCount()):
                row_data = []
                for column in range(self.tableWidget.columnCount()):
                    item = self.tableWidget.item(row, column)
                    if item is not None:
                        row_data.append(item.text())
                    else:
                        row_data.append('')
                results.append(row_data)

            ruta_actual = os.path.abspath(os.path.dirname(__file__))
            ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_lista_dirigentes.html")

            with open(ruta_template, "r") as archivo_html_template:
                contenido_template = archivo_html_template.read()
            template = Template(contenido_template)

            html_renderizado = template.render(results=results)

            ruta_resultado = os.path.join(ruta_actual, "..", "utils", "listado_dirigentes.html")
            with open(ruta_resultado, "w") as archivo_html_resultado:
                archivo_html_resultado.write(html_renderizado)

            dialogo = QFileDialog()
            dialogo.setAcceptMode(QFileDialog.AcceptSave)
            dialogo.setNameFilter("Archivos PDF (*.pdf)")
            dialogo.setDefaultSuffix("pdf")

            fecha_actual = datetime.datetime.now().strftime("%d-%m-%Y")
            nombre_archivo = f"Lista de Dirigentes - {fecha_actual}.pdf"
            dialogo.selectFile(nombre_archivo)

            if dialogo.exec():
                rutas_seleccionadas = dialogo.selectedFiles()
                if rutas_seleccionadas:
                    ruta_pdf = rutas_seleccionadas[0]
                    options = {'enable-local-file-access': None}
                    pdfkit.from_file(ruta_resultado, ruta_pdf, options=options)
        else:
            pass 

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar el listado actual?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
        else:
            pass 

    def buscar(self, texto):
        num_filas = self.tableWidget.rowCount()

        for fila in range(num_filas):
            item_dni = self.tableWidget.item(fila, 3)
            item_nombre = self.tableWidget.item(fila, 1)
            item_apellido = self.tableWidget.item(fila, 2)

            if item_dni is not None and item_nombre is not None and item_apellido is not None:
                dni = item_dni.text()
                nombre = item_nombre.text().lower()
                apellido = item_apellido.text().lower()

                if texto.lower() in dni.lower() or texto.lower() in nombre or texto.lower() in apellido:
                    self.tableWidget.setRowHidden(fila, False)
                else:
                    self.tableWidget.setRowHidden(fila, True)

    def enviarSeleccionado(self, item):
        row = item.row()
        data = []
        for col in range(self.tableWidget.columnCount()):
            data.append(self.tableWidget.item(row, col).text())

 
        self.registrar = RegistrarDirigentes(self.menu_registros, data)
        self.registrar.lineEdit.setText(data[0])
        self.registrar.lineEdit_2.setText(data[1])
        self.registrar.lineEdit_3.setText(data[2])
        self.registrar.lineEdit_4.setText(data[3])

        fecha_formateada = data[4].split()[0] 
        self.registrar.dateEdit.setDate(QDate.fromString(fecha_formateada, "dd-MM-yyyy"))

        fecha_formateada = data[5].split()[0]
        self.registrar.dateEdit_2.setDate(QDate.fromString(fecha_formateada, "dd-MM-yyyy"))

        self.registrar.spinBox.setValue(int(data[6]))

        if data[7] == "VIGENTE":
            self.registrar.comboBox.setCurrentIndex(0)
        else:
            self.registrar.comboBox.setCurrentIndex(1)

        if data[8] == "1":
            self.registrar.comboBox_2.setCurrentIndex(0)
        elif data[8] == "2":
            self.registrar.comboBox_2.setCurrentIndex(1)
        elif data[8] == "3":
            self.registrar.comboBox_2.setCurrentIndex(2)
        elif data[8] == "4":
            self.registrar.comboBox_2.setCurrentIndex(3)
        elif data[8] == "5":
            self.registrar.comboBox_2.setCurrentIndex(4)
        elif data[8] == "6":
            self.registrar.comboBox_2.setCurrentIndex(5)
        elif data[8] == "7":
            self.registrar.comboBox_2.setCurrentIndex(6)
        elif data[8] == "8":
            self.registrar.comboBox_2.setCurrentIndex(7)
        elif data[8] == "9":
            self.registrar.comboBox_2.setCurrentIndex(8)

        self.menu_registros.layout.addWidget(self.registrar)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

        self.close()

class RegistrarDirigentes(QMainWindow, Ui_MainWindow_RegistroDirigentes):
    def __init__(self,menu_registros,data=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)
        self.load()

        self.menu_registros = menu_registros

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionGrabar.triggered.connect(self.grabar)
        self.actionEliminar.triggered.connect(self.eliminar)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)

        self.dateEdit.dateChanged.connect(self.actualizar_dias_Periodo)
        self.dateEdit_2.dateChanged.connect(self.actualizar_dias_Periodo)

    def load(self):
        self.actionImprimir.setEnabled(False)
        today = date.today()
        self.dateEdit.setDate(today)

        two_years_later = today + timedelta(days=365 * 2)
        self.dateEdit_2.setDate(two_years_later)

        self.lineEdit_4.setValidator(QIntValidator())  # Establecer validador de números enteros
        self.lineEdit_4.textChanged.connect(self.limitar_a_numeros)

        self.actualizar_dias_Periodo()

    def limitar_a_numeros(self, text):
        if not text.isdigit():
            self.lineEdit_4.setText('')

    def actualizar_dias_Periodo(self):
        inicio_date = self.dateEdit.date().toPython()
        termino_date = self.dateEdit_2.date().toPython()
        dias_periodo = (termino_date - inicio_date).days

        self.spinBox.setValue(dias_periodo)

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarDirigentes()
        else:
            pass 

    def grabar(self):
        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea grabar un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            id_dirigente = self.lineEdit.text()
            nombre = self.lineEdit_2.text()
            apellido = self.lineEdit_3.text()
            dni = self.lineEdit_4.text()
            inicio_periodo = self.dateEdit.date().toString("yyyy-MM-dd")
            termino_periodo = self.dateEdit_2.date().toString("yyyy-MM-dd")
            dias_periodo = self.spinBox.value()
            vigencia = "1" if self.comboBox.currentIndex() == 0 else "0"
            if self.comboBox_2.currentIndex() == 0:
                secretaria = 1
            elif self.comboBox_2.currentIndex() == 1:
                secretaria = 2
            elif self.comboBox_2.currentIndex() == 2:
                secretaria = 3
            elif self.comboBox_2.currentIndex() == 3:
                secretaria = 4
            elif self.comboBox_2.currentIndex() == 4:
                secretaria = 5
            elif self.comboBox_2.currentIndex() == 5:
                secretaria = 6
            elif self.comboBox_2.currentIndex() == 6:
                secretaria = 7
            elif self.comboBox_2.currentIndex() == 7:
                secretaria = 8
            elif self.comboBox_2.currentIndex() == 8:
                secretaria = 9
                
            if nombre and apellido and dni:
                if id_dirigente:
                    editar_Dirigente(id_dirigente, nombre, apellido, dni, inicio_periodo, termino_periodo, dias_periodo, vigencia,secretaria)
                    QMessageBox.information(self, "Éxito", "Se ha editado el dirigente correctamente.")
                else:
                    guardar_Dirigente(nombre, apellido, dni, inicio_periodo, termino_periodo, dias_periodo, vigencia,secretaria)
                    QMessageBox.information(self, "Éxito", "Se ha guardado el dirigente correctamente.")
            else:
                QMessageBox.warning(self, "Advertencia", "Los campos que contienen un (*) son obligatorios.")

            self.close()
            self.menu_registros.mostrar_listarDirigentes()
        else:
            pass 

    def eliminar(self):
        id = int(self.lineEdit.text()) 

        if id:
            respuesta = QMessageBox.question(self, "Confirmar Eliminación", "¿Estás seguro de eliminar el registro?", QMessageBox.Yes | QMessageBox.No)
                        
            if respuesta == QMessageBox.Yes:
                sp = "sp_eliminarDirigentes"
                Eliminar(sp,id)
                QMessageBox.information(self, "Éxito", "Se ha eliminado el registro correctamente.")
                self.close()
                self.menu_registros.mostrar_listarDirigentes()
        else:
            QMessageBox.warning(self, "Advertencia", "Necesita seleccionar un registro primero.")

    def exportarPdf(self):

            if not self.lineEdit.text():
                QMessageBox.warning(self, "Alerta", "Necesita seleccionar un Dirigente")
            else:
                respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar el dirigente a PDF?", QMessageBox.Yes | QMessageBox.No)

                if respuesta == QMessageBox.Yes:
                    nombre = self.lineEdit_2.text()
                    apellido = self.lineEdit_3.text()
                    dni = self.lineEdit_4.text()
                    inicio_periodo = self.dateEdit.date().toString("dd-MM-yyyy")
                    termino_periodo = self.dateEdit_2.date().toString("dd-MM-yyyy")
                    dias = self.spinBox.value()
                    vigencia = self.comboBox.currentText()

                    ruta_actual = os.path.abspath(os.path.dirname(__file__))
                    ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_registro_dirigentes.html")

                    with open(ruta_template, "r") as archivo_html_template:
                        contenido_template = archivo_html_template.read()
                    template = Template(contenido_template)

                    html_renderizado = template.render(nombre=nombre, apellido=apellido, dni=dni,
                                                    inicio_periodo=inicio_periodo, termino_periodo=termino_periodo,
                                                    dias=dias, vigencia=vigencia)

                    ruta_resultado = os.path.join(ruta_actual, "..", "utils", "registro_dirigentes.html")
                    with open(ruta_resultado, "w") as archivo_html_resultado:
                        archivo_html_resultado.write(html_renderizado)

                    dialogo = QFileDialog()
                    dialogo.setAcceptMode(QFileDialog.AcceptSave)
                    dialogo.setNameFilter("Archivos PDF (*.pdf)")
                    dialogo.setDefaultSuffix("pdf")

                    # Establecer el nombre por defecto del archivo
                    nombre_archivo = f"Dirigente - {nombre} {apellido}.pdf"
                    dialogo.selectFile(nombre_archivo)

                    if dialogo.exec():
                        rutas_seleccionadas = dialogo.selectedFiles()
                        if rutas_seleccionadas:
                            ruta_pdf = rutas_seleccionadas[0]
                            # Convertir el archivo HTML a PDF
                            options = {'enable-local-file-access': None}
                            pdfkit.from_file(ruta_resultado, ruta_pdf, options=options)
                else:
                    pass 

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar la ventana de registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
        else:
            pass 


    def showEvent(self, event):
        self.actualizar_dias_Periodo()
        super().showEvent(event)