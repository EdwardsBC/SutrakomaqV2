from database.connection import *
from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QFileDialog, QWidget, QSizePolicy, QVBoxLayout
from models.ui_lista_ingresos_egresos import Ui_MainWindow as Ui_MainWindow_Listaingresos_egresos
from models.ui_registro_ingresos_egresos import Ui_MainWindow as Ui_MainWindow_Registroingresos_egresos
from PySide6.QtCore import QDate, Qt
from jinja2 import Template
import datetime
import pdfkit
import os

class ListarIngresosEgresos(QMainWindow, Ui_MainWindow_Listaingresos_egresos):
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
        self.listar()

    def listar(self):
        sp = "sp_listarIngresosEgresos()"
        escolaridades = Listar(sp)
        
        if len(escolaridades) > 0:
            self.tableWidget.setRowCount(len(escolaridades))
            self.tableWidget.setColumnCount(len(escolaridades[0]))
            self.tableWidget.setHorizontalHeaderLabels([])

            for row_idx, row_data in enumerate(escolaridades):
                for col_idx, cell_data in enumerate(row_data):
                    item = QTableWidgetItem(str(cell_data))
                    self.tableWidget.setItem(row_idx, col_idx, item)
                    if col_idx == 1:
                        fecha_str = cell_data.strftime("%d-%m-%Y")
                        item.setText(fecha_str)
                    elif col_idx == 3:
                        if cell_data == "0":
                            item.setText("ENTRADA")
                        else :
                            item.setText("SALIDA")
                    else:
                        item.setText(str(cell_data))


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
            ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_lista_ingresosegresos.html")

            with open(ruta_template, "r") as archivo_html_template:
                contenido_template = archivo_html_template.read()
            template = Template(contenido_template)

            html_renderizado = template.render(results=results)

            ruta_resultado = os.path.join(ruta_actual, "..", "utils", "listado_ingresosegresos.html")
            with open(ruta_resultado, "w") as archivo_html_resultado:
                archivo_html_resultado.write(html_renderizado)

            dialogo = QFileDialog()
            dialogo.setAcceptMode(QFileDialog.AcceptSave)
            dialogo.setNameFilter("Archivos PDF (*.pdf)")
            dialogo.setDefaultSuffix("pdf")

            fecha_actual = datetime.datetime.now().strftime("%d-%m-%Y")
            nombre_archivo = f"Lista de Ingresos y Egresos - {fecha_actual}.pdf"
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
            concepto = self.tableWidget.item(fila, 1) 
            tipo = self.tableWidget.item(fila, 2) 
            if concepto is not None and tipo is not None:
                ne = concepto.text().lower()
                ae = tipo.text().lower()
                if texto.lower() in ne.lower() or texto.lower() in ae:
                    self.tableWidget.setRowHidden(fila, False)
                else:
                    self.tableWidget.setRowHidden(fila, True)

    def enviarSeleccionado(self, item):
        row = item.row()
        data = []
        for col in range(self.tableWidget.columnCount()):
            data.append(self.tableWidget.item(row, col).text())


        self.registrar = RegistrarIngresosEgresos(self.menu_contabilidad, data)

        self.registrar.lineEdit.setText(data[0])
        fecha_formateada = data[1].split()[0] 
        self.registrar.dateEdit.setDate(QDate.fromString(fecha_formateada, "dd-MM-yyyy"))
        self.registrar.lineEdit_2.setText(data[2])
        if data[3] == "ENTRADA":
            self.registrar.comboBox.setCurrentIndex(0)
        elif data[3] == "SALIDA":
            self.registrar.comboBox.setCurrentIndex(1)
        self.registrar.doubleSpinBox.setValue(float(data[4]))
        self.registrar.doubleSpinBox_2.setValue(float(data[5]))

        self.close()

        self.menu_contabilidad.layout.addWidget(self.registrar_cuotas)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

class RegistrarIngresosEgresos(QMainWindow, Ui_MainWindow_Registroingresos_egresos):
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

    def load(self):
        self.actionImprimir.setEnabled(False)
        self.dateEdit.setDate(QDate.currentDate())

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_contabilidad.mostrar_registroIngresosEgresos()
        else:
            pass

    def grabar(self):
        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea grabar un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            id = self.lineEdit.text()
            fecha = self.dateEdit.date().toString("yyyy-MM-dd")
            concepto = self.lineEdit_2.text()
            if self.comboBox.currentIndex() == 0:
                tipo_movimiento = 0
            elif self.comboBox.currentIndex() == 1:
                tipo_movimiento = 1
            cantidad = self.doubleSpinBox.value()
            saldo = self.doubleSpinBox_2.value()

            if concepto and cantidad and saldo:
                if id:
                    editar_IngresoEgreso(id,fecha,concepto,tipo_movimiento,cantidad,saldo)
                    QMessageBox.information(self, "Éxito", "Se ha editado el registro con exito.")
                    self.close()
                    self.menu_contabilidad.mostrar_listarIngresosEgresos()
                else:
                    guardar_IngresoEgreso(fecha,concepto,tipo_movimiento,cantidad,saldo)
                    QMessageBox.information(self, "Éxito", "Se ha guardado el registro correctamente.")
                    self.close()
                    self.menu_contabilidad.mostrar_listarIngresosEgresos()
            else:
                QMessageBox.warning(self, "Advertencia", "Los campos que contienen un (*) son obligatorios.")
        else:
            pass 

    def exportarPdf(self):
        respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar la lista a PDF?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            print("Exportar a PDF")
        else:
            pass 

    def eliminar(self):
        id = int(self.lineEdit.text()) 

        if id:
            respuesta = QMessageBox.question(self, "Confirmar Eliminación", "¿Estás seguro de eliminar el registro?", QMessageBox.Yes | QMessageBox.No)
                        
            if respuesta == QMessageBox.Yes:
                sp = "sp_eliminarIngresosEgresos"
                Eliminar(sp,id)
                QMessageBox.information(self, "Éxito", "Se ha eliminado el registro correctamente.")
                self.close()

                self.menu_contabilidad.mostrar_listarIngresosEgresos()
        else:
            QMessageBox.warning(self, "Advertencia", "Necesita seleccionar un registro primero.")

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar la ventana de registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
        else:
            pass 