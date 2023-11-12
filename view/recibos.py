from database.connection import *
from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QFileDialog, QWidget, QSizePolicy, QVBoxLayout
from models.ui_registro_recibo import Ui_MainWindow as Ui_MainWindow_RegistroRecibos
from models.ui_lista_recibos import Ui_MainWindow as Ui_MainWindow_ListaRecibos
from models.ui_buscar_Dirigente import Ui_MainWindow as Ui_MainWindow_buscarDirigente
from PySide6.QtCore import QDate, Qt
from datetime import datetime
from jinja2 import Template
import calendar
import locale
import pdfkit
import os

class ListarRecibos(QMainWindow, Ui_MainWindow_ListaRecibos):
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

        self.dateEdit_6.dateChanged.connect(lambda date: self.cargarDatos(self.dateEdit_6.date().toString("dd-MM-yyyy"), self.dateEdit_7.date().toString("dd-MM-yyyy")))
        self.dateEdit_7.dateChanged.connect(lambda date: self.cargarDatos(self.dateEdit_6.date().toString("dd-MM-yyyy"), self.dateEdit_7.date().toString("dd-MM-yyyy")))

    def load(self):
        self.tableWidget.setColumnHidden(0, True)
        self.tableWidget.setColumnHidden(2, True)
        date = QDate.fromString("01/01/2000", "dd/MM/yyyy")
        self.dateEdit_6.setDate(date)
        self.dateEdit_7.setDate(QDate.currentDate().addDays(1))
    
        self.cargarDatos(self.dateEdit_6.date().toString("dd-MM-yyyy"), self.dateEdit_7.date().toString("dd-MM-yyyy"))

    def cargarDatos(self, fecha_inicio, fecha_fin):
        fecha_inicio_str = datetime.strptime(fecha_inicio, "%d-%m-%Y").strftime("%Y-%m-%d")
        fecha_fin_str = datetime.strptime(fecha_fin, "%d-%m-%Y").strftime("%Y-%m-%d")
        
        recibos = obtener_ListadoRecibos(fecha_inicio_str, fecha_fin_str)

        if recibos and len(recibos) > 0:
            self.tableWidget.setColumnCount(len(recibos[0]))
            self.tableWidget.setRowCount(len(recibos))
            for row, recibo in enumerate(recibos):
                for col, value in enumerate(recibo):
                    item = QTableWidgetItem()
                    if col == 1:
                        item.setText(value.strftime("%d-%m-%Y"))
                    else:
                        item.setText(str(value))
                    self.tableWidget.setItem(row, col, item)

            self.tableWidget.resizeColumnsToContents()
            self.buscar(self.lineEdit.text())
        else:
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo Registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_contabilidad.mostrar_registroRecibos()
        else:
            pass 

    def exportarExcel(self):
        respuesta = QMessageBox.question(self, "Exportar a Excel", "¿Desea exportar la lista a Excel?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
           print("Exportar a excel")
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
            ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_lista_recibos.html")

            with open(ruta_template, "r") as archivo_html_template:
                contenido_template = archivo_html_template.read()
            template = Template(contenido_template)

            html_renderizado = template.render(results=results)

            ruta_resultado = os.path.join(ruta_actual, "..", "utils", "listado_recibos.html")
            with open(ruta_resultado, "w") as archivo_html_resultado:
                archivo_html_resultado.write(html_renderizado)

            dialogo = QFileDialog()
            dialogo.setAcceptMode(QFileDialog.AcceptSave)
            dialogo.setNameFilter("Archivos PDF (*.pdf)")
            dialogo.setDefaultSuffix("pdf")

            fecha_inicio = self.dateEdit_6.date().toString("dd-MM-yyyy")
            fecha_fin = self.dateEdit_7.date().toString("dd-MM-yyyy")
            nombre_archivo = f"Lista de Recibos desde {fecha_inicio} hasta {fecha_fin}.pdf"
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

    def buscar(self,texto):
        num_filas = self.tableWidget.rowCount()

        for fila in range(num_filas):
            item_dirigente = self.tableWidget.item(fila, 2)
            item_concepto = self.tableWidget.item(fila, 4)

            if item_dirigente is not None and item_concepto is not None:
                dirigente = item_dirigente.text()
                concepto = item_concepto.text().lower()

                if texto.lower() in dirigente.lower() or texto.lower() in concepto:
                    self.tableWidget.setRowHidden(fila, False)
                else:
                    self.tableWidget.setRowHidden(fila, True)

    def enviarSeleccionado(self,item):
        row = item.row()
        data = []
        for col in range(self.tableWidget.columnCount()):
            data.append(self.tableWidget.item(row, col).text())

        self.close()
        self.registrar = RegistrarRecibos(self.menu_contabilidad, data)

        self.registrar.lineEdit.setText(data[0])
        fecha_formateada = data[1].split()[0] 
        self.registrar.dateEdit.setDate(QDate.fromString(fecha_formateada, "dd-MM-yyyy"))
        self.registrar.lineEdit_2.setText(data[2])
        self.registrar.lineEdit_3.setText(data[3])
        self.registrar.doubleSpinBox.setValue(float(data[4]))
        self.registrar.lineEdit_4.setText(data[5])
        self.close()

        self.menu_contabilidad.layout.addWidget(self.registrar)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

class RegistrarRecibos(QMainWindow, Ui_MainWindow_RegistroRecibos):
    def __init__(self,menu_contabilidad,data=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.load()

        self.menu_contabilidad = menu_contabilidad

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionGrabar.triggered.connect(self.grabar)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionEliminar.triggered.connect(self.eliminar)
        self.actionSalir.triggered.connect(self.cerrar)
        self.lineEdit_3.textChanged.connect(self.buscarDirigente)

    def buscarDirigente(self):
        valor_a_buscar = str(self.lineEdit_3.text())

        if len(valor_a_buscar) >= 8:
            resultado = buscarDirigenteDNI(valor_a_buscar)

            if resultado:
                self.lineEdit_2.setText(str(resultado[0]))
                self.lineEdit_5.setText(resultado[1])

    def load(self):
        self.dateEdit.setDate(QDate.currentDate())

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_contabilidad.mostrar_registroRecibos()
        else:
            pass 

    def grabar(self):
        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea grabar un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            id_recibo = self.lineEdit.text()
            fecha = self.dateEdit.date().toString("yyyy-MM-dd")
            id_dirigente = self.lineEdit_2.text()
            valor = self.doubleSpinBox.value()
            concepto = self.lineEdit_4.text()
            
            if id_dirigente and concepto:
                if id_recibo:
                    editar_Recibo(id_recibo, fecha, id_dirigente, valor, concepto)
                    QMessageBox.information(self, "Éxito", "Se ha editado el recibo correctamente.")
                    self.close()
                    self.menu_contabilidad.mostrar_listarRecibos()
                else:
                    guardar_Recibo(fecha, id_dirigente, valor, concepto)
                    QMessageBox.information(self, "Éxito", "Se ha guardado el recibo correctamente.")
                    self.close()
                    self.menu_contabilidad.mostrar_listarRecibos()
            else:
                QMessageBox.warning(self, "Advertencia", "Los campos que contienen un (*) son obligatorios.")
        else:
            pass 

    def exportarPdf(self):
        if not self.lineEdit.text():
            QMessageBox.warning(self, "Alerta", "Necesita seleccionar un recibo")
        else:
            respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar el recibo a PDF?", QMessageBox.Yes | QMessageBox.No)

            if respuesta == QMessageBox.Yes:
                id_recibo = self.lineEdit.text()
                fecha = self.dateEdit.date().toString("dd-MM-yyyy")
                dirigente = self.lineEdit_3.text()
                valor = float(self.doubleSpinBox.value())
                concepto = self.lineEdit_4.text()
                valorletras = convertir_numero_letras(valor)
                fechaletras = convertir_fecha_letras(fecha)

                ruta_actual = os.path.abspath(os.path.dirname(__file__))
                ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_registro_recibos.html")

                with open(ruta_template, "r") as archivo_html_template:
                    contenido_template = archivo_html_template.read()
                template = Template(contenido_template)

                html_renderizado = template.render(id_recibo=id_recibo, fecha=fecha, dirigente=dirigente, valor=valor, concepto=concepto, valorletras=valorletras, fechaletras=fechaletras)

                ruta_resultado = os.path.join(ruta_actual, "..", "utils", "registro_recibos.html")
                with open(ruta_resultado, "w") as archivo_html_resultado:
                    archivo_html_resultado.write(html_renderizado)

                dialogo = QFileDialog()
                dialogo.setAcceptMode(QFileDialog.AcceptSave)
                dialogo.setNameFilter("Archivos PDF (*.pdf)")
                dialogo.setDefaultSuffix("pdf")

                nombre_archivo = f"Recibo N°00{id_recibo}.pdf"
                dialogo.selectFile(nombre_archivo)

                if dialogo.exec():
                    rutas_seleccionadas = dialogo.selectedFiles()
                    if rutas_seleccionadas:
                        ruta_pdf = rutas_seleccionadas[0]
                        options = {'enable-local-file-access': None}
                        pdfkit.from_file(ruta_resultado, ruta_pdf, options=options)
            else:
                pass

    def eliminar(self):
        id = int(self.lineEdit.text()) 

        if id:
            respuesta = QMessageBox.question(self, "Confirmar Eliminación", "¿Estás seguro de eliminar el registro?", QMessageBox.Yes | QMessageBox.No)
                        
            if respuesta == QMessageBox.Yes:
                sp = "sp_eliminarRecibos"
                Eliminar(sp,id)
                QMessageBox.information(self, "Éxito", "Se ha eliminado el registro correctamente.")
                self.close()
                self.menu_contabilidad.mostrar_listarRecibos()
        else:
            QMessageBox.warning(self, "Advertencia", "Necesita seleccionar un registro primero.")

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar la ventana de registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
        else:
            pass 

#######################################################
def convertir_fecha_letras(fecha):
    fecha_datetime = datetime.strptime(fecha, "%d-%m-%Y")
    dia = fecha_datetime.strftime("%d")
    locale.setlocale(locale.LC_ALL, 'es_ES')
    mes = calendar.month_name[int(fecha_datetime.strftime("%m"))]

    anio = fecha_datetime.strftime("%Y")

    fecha_letras = f"{dia} {mes} {anio}"
    return fecha_letras

UNIDADES = {
    0: 'cero',
    1: 'un',
    2: 'dos',
    3: 'tres',
    4: 'cuatro',
    5: 'cinco',
    6: 'seis',
    7: 'siete',
    8: 'ocho',
    9: 'nueve',
    10: 'diez',
    11: 'once',
    12: 'doce',
    13: 'trece',
    14: 'catorce',
    15: 'quince',
    16: 'dieciséis',
    17: 'diecisiete',
    18: 'dieciocho',
    19: 'diecinueve',
}

DECENAS = {
    2: 'veinte',
    3: 'treinta',
    4: 'cuarenta',
    5: 'cincuenta',
    6: 'sesenta',
    7: 'setenta',
    8: 'ochenta',
    9: 'noventa',
}

CENTENAS = {
    1: 'ciento',
    2: 'doscientos',
    3: 'trescientos',
    4: 'cuatrocientos',
    5: 'quinientos',
    6: 'seiscientos',
    7: 'setecientos',
    8: 'ochocientos',
    9: 'novecientos',
}

def convertir_numero_letras(numero):
    numero_entero = int(numero)
    numero_decimal = round(numero - numero_entero, 2) * 100

    letras = ''
    if numero_entero > 0:
        letras += convertir_parte_entera(numero_entero)
        letras += ' nuevos soles'
    if numero_decimal > 0:
        letras += ' con '
        letras += convertir_parte_decimal(numero_decimal)
        letras += ' céntimos'

    return letras

def convertir_parte_entera(numero):
    if numero < 20:
        return UNIDADES[numero]
    elif numero < 100:
        unidades = numero % 10
        decenas = numero // 10
        if unidades > 0:
            return f'{DECENAS[decenas]} y {UNIDADES[unidades]}'
        else:
            return DECENAS[decenas]
    else:
        unidades = numero % 10
        decenas = (numero % 100) // 10
        centenas = numero // 100
        if decenas == 0 and unidades == 0:
            return CENTENAS[centenas]
        else:
            return f'{CENTENAS[centenas]} {convertir_parte_entera(numero % 100)}'

def convertir_parte_decimal(numero):
    if numero < 20:
        return UNIDADES[numero]
    else:
        unidades = numero % 10
        decenas = numero // 10
        if unidades > 0:
            return f'{DECENAS[decenas]} y {UNIDADES[unidades]}'
        else:
            return DECENAS[decenas]
