from models.ui_buscar_Afiliado import Ui_MainWindow as Ui_MainWindow_buscarAfiliado
from models.ui_registro_cuotas import Ui_MainWindow as Ui_MainWindow_RegistroCuotas
from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QFileDialog, QWidget, QSizePolicy, QVBoxLayout
from models.ui_lista_cuotas import Ui_MainWindow as Ui_MainWindow_ListaCuotas
from database.connection import *
from PySide6.QtCore import Qt
from jinja2 import Template
import datetime
import pdfkit
import os

class ListarCuotas(QMainWindow, Ui_MainWindow_ListaCuotas):
    def __init__(self,menu_contabilidad):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.load()

        self.menu_contabilidad = menu_contabilidad

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionExportar.triggered.connect(self.exportarExcel)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)

        self.lineEdit.textChanged.connect(self.buscar)
        self.tableWidget.itemDoubleClicked.connect(self.enviarSeleccionado)

    def load(self):
        self.tableWidget.setColumnHidden(0, True)
        self.tableWidget.setColumnHidden(1, True)
        self.listar()

    def listar(self):
        sp = "sp_listarCuotas()"
        cuotas = Listar(sp)

        if len(cuotas) > 0:
            self.tableWidget.setRowCount(len(cuotas))
            self.tableWidget.setColumnCount(len(cuotas[0]))
            self.tableWidget.setHorizontalHeaderLabels([])

            for row_idx, row_data in enumerate(cuotas):
                for col_idx, cell_data in enumerate(row_data):
                    item = QTableWidgetItem(str(cell_data))
                    self.tableWidget.setItem(row_idx, col_idx, item)

            self.tableWidget.resizeColumnsToContents()
        else:
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo Registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_contabilidad.mostrar_registroCuotas()
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
            ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_lista_cuotas.html")

            with open(ruta_template, "r") as archivo_html_template:
                contenido_template = archivo_html_template.read()
            template = Template(contenido_template)

            html_renderizado = template.render(results=results)

            ruta_resultado = os.path.join(ruta_actual, "..", "utils", "listado_cuotas.html")
            with open(ruta_resultado, "w") as archivo_html_resultado:
                archivo_html_resultado.write(html_renderizado)

            dialogo = QFileDialog()
            dialogo.setAcceptMode(QFileDialog.AcceptSave)
            dialogo.setNameFilter("Archivos PDF (*.pdf)")
            dialogo.setDefaultSuffix("pdf")

            fecha_actual = datetime.datetime.now().strftime("%d-%m-%Y")
            nombre_archivo = f"Lista de Cuotas - {fecha_actual}.pdf"
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
            nombre = self.tableWidget.item(fila, 0) 
            apell = self.tableWidget.item(fila, 1) 
            if nombre is not None and apell is not None:
                nom = nombre.text().lower()
                ape = apell.text().lower()
                if texto.lower() in nom.lower() or texto.lower() in ape:
                    self.tableWidget.setRowHidden(fila, False)
                else:
                    self.tableWidget.setRowHidden(fila, True)

    def enviarSeleccionado(self, item):
        row = item.row()
        data = []
        for col in range(self.tableWidget.columnCount()):
            data.append(self.tableWidget.item(row, col).text())

        self.registrar_cuotas = RegistrarCuotas(self.menu_contabilidad, data)

        self.registrar_cuotas.lineEdit.setText(data[0])
        self.registrar_cuotas.lineEdit_2.setText(data[1])
        self.registrar_cuotas.lineEdit_3.setText(data[2]+ " "+ data[3])
        self.registrar_cuotas.doubleSpinBox.setValue(float(data[4]))
        self.registrar_cuotas.doubleSpinBox_2.setValue(float(data[5]))

        self.registrar_cuotas.doubleSpinBox.setFocus()

        self.close()

        self.menu_contabilidad.layout.addWidget(self.registrar_cuotas)
        self.registrar_cuotas.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

class RegistrarCuotas(QMainWindow, Ui_MainWindow_RegistroCuotas):
    def __init__(self,menu_contabilidad,data=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.load()

        self.menu_contabilidad = menu_contabilidad

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionGrabar.triggered.connect(self.grabar)
        self.actionEliminar.triggered.connect(self.eliminar)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)
        self.lineEdit_3.textChanged.connect(self.buscarAfiliado)

    def buscarAfiliado(self):
        valor_a_buscar = str(self.lineEdit_3.text())
        if len(valor_a_buscar) >= 8:
            resultado = buscarAfiliadoDNI(valor_a_buscar)

            if resultado:
                self.lineEdit_2.setText(str(resultado[0]))
                self.lineEdit_4.setText(resultado[1])

    def load(self):
        self.actionImprimir.setEnabled(False)

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_contabilidad.mostrar_registroCuotas()
        else:
            pass 

    def grabar(self):
        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea grabar un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            id = self.lineEdit.text()
            id_afiliado = self.lineEdit_2.text()
            cuota_ordinaria = self.doubleSpinBox.value()
            cuota_anual = self.doubleSpinBox_2.value()

            if id_afiliado and cuota_ordinaria and cuota_anual:
                if id:
                    editar_Cuotas(id, id_afiliado, cuota_ordinaria, cuota_anual)
                    QMessageBox.information(self, "Éxito", "Se ha editado el registro con exito.")
                else:
                    guardar_Cuotas(id_afiliado, cuota_ordinaria, cuota_anual)
                    QMessageBox.information(self, "Éxito", "Se ha guardado el registro correctamente.")
            else:
                QMessageBox.warning(self, "Advertencia", "Los campos que contienen un (*) son obligatorios.")

            self.close()
            self.menu_contabilidad.mostrar_listarCuotas()
        else:
            pass 

    def eliminar(self):
        id = int(self.lineEdit.text()) 

        if id:
            respuesta = QMessageBox.question(self, "Confirmar Eliminación", "¿Estás seguro de eliminar el registro?", QMessageBox.Yes | QMessageBox.No)
                        
            if respuesta == QMessageBox.Yes:
                sp = "sp_eliminarCuotas"
                Eliminar(sp,id)
                QMessageBox.information(self, "Éxito", "Se ha eliminado el registro correctamente.")
                self.close()
                self.menu_contabilidad.mostrar_listarCuotas()
        else:
            QMessageBox.warning(self, "Advertencia", "Necesita seleccionar un registro primero.")

    def exportarPdf(self):
        pass

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar la ventana de registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
        else:
            pass 
