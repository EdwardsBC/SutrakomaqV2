from database.connection import *
from models.ui_registro_afiliados import Ui_MainWindow as Ui_MainWindow_RegistroAfiliados
from models.ui_lista_afiliados import Ui_MainWindow as Ui_MainWindow_ListaAfiliados
from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QFileDialog, QWidget, QSizePolicy, QVBoxLayout
from PySide6.QtCore import QDate, Qt
from datetime import datetime
from jinja2 import Template
import datetime
import pdfkit
import os

class ListarAfiliados(QMainWindow, Ui_MainWindow_ListaAfiliados):
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
        self.tableWidget.cellDoubleClicked.connect(self.enviarSeleccionado)

    def load(self):
        self.tableWidget.setColumnHidden(0, True)
        self.tableWidget.setColumnHidden(7, True)
        self.tableWidget.setColumnHidden(8, True)
        self.tableWidget.setColumnHidden(9, True)
        self.listar()


    def listar(self):
        sp = "sp_listarAfiliados()"
        afiliados = Listar(sp)

        if len(afiliados) > 0:
            num_columns = len(afiliados[0])
            self.tableWidget.setColumnCount(num_columns)

            self.tableWidget.setRowCount(len(afiliados))
            for row_idx, row_data in enumerate(afiliados):
                for col_idx, cell_data in enumerate(row_data):
                    item = QTableWidgetItem(str(cell_data))
                    self.tableWidget.setItem(row_idx, col_idx, item)

                    if col_idx == num_columns - 1:
                        if cell_data == "AFILIADO":
                            item.setText("AFILIADO")
                        elif cell_data == "DESAFILIADO":
                            item.setText("DESAFILIADO")
                        elif cell_data == "SUSPENCION PERFECTA":
                            item.setText("SUSPENCION PERFECTA")
                        elif cell_data == "CESADO":
                            item.setText("CESADO")
                        else :
                            item.setText("PRECESO DE JUICIO")
                    elif col_idx == 5 :
                        fecha_str = cell_data.strftime("%d-%m-%Y")
                        item.setText(fecha_str)
                    elif col_idx == 12 :
                        fecha_str = cell_data.strftime("%d-%m-%Y")
                        item.setText(fecha_str)
                    elif col_idx == 13 :
                        fecha_str = cell_data.strftime("%d-%m-%Y")
                        item.setText(fecha_str)

            self.tableWidget.resizeColumnsToContents()
        else:
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo Registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarAfiliados()
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
            ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_lista_afiliados.html")

            with open(ruta_template, "r") as archivo_html_template:
                contenido_template = archivo_html_template.read()
            template = Template(contenido_template)

            html_renderizado = template.render(results=results)

            ruta_resultado = os.path.join(ruta_actual, "..", "utils", "listado_afiliados.html")
            with open(ruta_resultado, "w") as archivo_html_resultado:
                archivo_html_resultado.write(html_renderizado)

            # Mostrar el diálogo de selección de archivo
            dialogo = QFileDialog()
            dialogo.setAcceptMode(QFileDialog.AcceptSave)
            dialogo.setNameFilter("Archivos PDF (*.pdf)")
            dialogo.setDefaultSuffix("pdf")

            # Establecer el nombre por defecto del archivo
            fecha_actual = datetime.datetime.now().strftime("%d-%m-%Y")
            nombre_archivo = f"Lista de afiliados - {fecha_actual}.pdf"
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
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar el listado actual?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
        else:
            pass

    def buscar(self, texto):
        num_filas = self.tableWidget.rowCount()

        for fila in range(num_filas):
            item_dni = self.tableWidget.item(fila, 4)
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

    def enviarSeleccionado(self, row, column):
        num_columnas = self.tableWidget.columnCount()
        data = []

        for col_idx in range(num_columnas):
            item = self.tableWidget.item(row, col_idx)
            if item is not None:
                data.append(item.text())
            else:
                data.append("")

        self.registrar_afiliados = RegistrarAfiliados(self.menu_registros, data)

        self.registrar_afiliados.lineEdit.setText(data[0]) 
        self.registrar_afiliados.lineEdit_1.setText(data[1])
        self.registrar_afiliados.lineEdit_2.setText(data[2])
        self.registrar_afiliados.lineEdit_3.setText(data[3])
        self.registrar_afiliados.lineEdit_4.setText(data[4])

        fecha_formateada = data[5].split()[0] 
        self.registrar_afiliados.dateEdit.setDate(QDate.fromString(fecha_formateada, "dd-MM-yyyy"))

        self.registrar_afiliados.spinBox.setValue(int(data[6]))
        self.registrar_afiliados.lineEdit_5.setText(data[7])
        self.registrar_afiliados.lineEdit_6.setText(data[8])
        self.registrar_afiliados.lineEdit_7.setText(data[9])

        self.registrar_afiliados.lineEdit_8.setText(data[10])
        self.registrar_afiliados.lineEdit_9.setText(data[11])

        fecha_formateada = data[12].split()[0] 
        self.registrar_afiliados.dateEdit_2.setDate(QDate.fromString(fecha_formateada, "dd-MM-yyyy"))

        fecha_formateada = data[13].split()[0] 
        self.registrar_afiliados.dateEdit_3.setDate(QDate.fromString(fecha_formateada, "dd-MM-yyyy"))

        if data[14] == "AFILIADO":
            self.registrar_afiliados.comboBox.setCurrentIndex(0)
        elif data[14] == "RETIRADO":
            self.registrar_afiliados.comboBox.setCurrentIndex(1)
        elif data[14] == "SUSPENSION PERFECTA":
            self.registrar_afiliados.comboBox.setCurrentIndex(2)
        elif data[14] == "CESADO":
            self.registrar_afiliados.comboBox.setCurrentIndex(3)
        else :
            self.registrar_afiliados.comboBox.setCurrentIndex(4)

        escolaridad = obtener_Escolaridad(int(data[0]))
        if len(escolaridad) > 0 :
            self.registrar_afiliados.spinBox_2.setValue(escolaridad[0][2])
            self.registrar_afiliados.spinBox_3.setValue(escolaridad[0][3])
            self.registrar_afiliados.spinBox_4.setValue(escolaridad[0][4])
            self.registrar_afiliados.spinBox_5.setValue(escolaridad[0][5])
            self.registrar_afiliados.spinBox_6.setValue(escolaridad[0][6])
            
        self.close()

        self.menu_registros.layout.addWidget(self.registrar_afiliados)
        self.registrar_afiliados.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)



class RegistrarAfiliados(QMainWindow, Ui_MainWindow_RegistroAfiliados):
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

    def load(self):
        date = QDate.fromString("01/01/1950", "dd/MM/yyyy")
        self.dateEdit.setDate(date)
        self.dateEdit_2.setDate(QDate.currentDate())
        self.dateEdit_3.setDate(QDate.currentDate())

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarAfiliados()
        else:
            pass 

    def grabar(self):
        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea grabar un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            id = self.lineEdit.text()
            nombre = self.lineEdit_1.text()
            apellido = self.lineEdit_2.text()
            lugar_vivienda = self.lineEdit_3.text()
            dni = self.lineEdit_4.text()
            fecha_nacimiento = self.dateEdit.date().toString("yyyy-MM-dd")
            celular = self.spinBox.value()
            nombre_entidad_bancaria = self.lineEdit_5.text()
            numero_cuenta_bancaria = self.lineEdit_6.text()
            numero_cci_bancario = self.lineEdit_7.text()
            puesto_trabajo = self.lineEdit_8.text()
            zona_laboral = self.lineEdit_9.text()
            fecha_ingreso_kmmp = self.dateEdit_2.date().toString("yyyy-MM-dd")
            fecha_ingreso_sindical = self.dateEdit_3.date().toString("yyyy-MM-dd")
            if self.comboBox.currentIndex() == 0:
                estado = "AFILIADO"
            elif self.comboBox.currentIndex() == 1:
                estado = "DESAFILIADO"
            elif self.comboBox.currentIndex() == 2:
                estado = "SUSPENSION PERFEFCTA"
            elif self.comboBox.currentIndex() == 3:
                estado = "CESADO"
            else :
                estado = "PROCESO JUICIO"

            if nombre and apellido and dni:
                if id:
                    editar_afiliado(id,nombre, apellido,lugar_vivienda, dni, fecha_nacimiento, celular, nombre_entidad_bancaria, numero_cuenta_bancaria, numero_cci_bancario, puesto_trabajo, zona_laboral, fecha_ingreso_kmmp, fecha_ingreso_sindical, estado)
                    
                    escolaridad = obtener_Escolaridad(id)
                    if escolaridad:
                        id_escolaridad = int(escolaridad[0][0])
                        nacido = int(self.spinBox_2.value())
                        inicial = int(self.spinBox_3.value())
                        primaria = int(self.spinBox_4.value())
                        secundaria = int(self.spinBox_5.value())
                        superior = int(self.spinBox_6.value())
                    editar_escolaridad(id_escolaridad,id,nacido,inicial,primaria,secundaria,superior)
                    QMessageBox.information(self, "Éxito", "Se ha editado el registro con exito.")
                else:
                    guardar_afiliado(nombre, apellido,lugar_vivienda, dni, fecha_nacimiento, celular, nombre_entidad_bancaria, numero_cuenta_bancaria, numero_cci_bancario, puesto_trabajo, zona_laboral, fecha_ingreso_kmmp, fecha_ingreso_sindical, estado)
                    id = obtener_ultimo_id()
                    nacido = int(self.spinBox_2.value())
                    inicial = int(self.spinBox_3.value())
                    primaria = int(self.spinBox_4.value())
                    secundaria = int(self.spinBox_5.value())
                    superior = int(self.spinBox_6.value())

                    guardar_escolaridad(id,nacido,inicial,primaria,secundaria,superior)
                    QMessageBox.information(self, "Éxito", "Se ha guardado el registro correctamente.")
            else:
                QMessageBox.warning(self, "Advertencia", "Los campos que contienen un (*) son obligatorios.")

            self.close()
            self.menu_registros.mostrar_listarAfiliados()
        else:
            pass 

    def eliminar(self):
        id = int(self.lineEdit.text()) 

        if id:
            respuesta = QMessageBox.question(self, "Confirmar Eliminación", "¿Estás seguro de eliminar el registro?", QMessageBox.Yes | QMessageBox.No)
                        
            if respuesta == QMessageBox.Yes:
                sp = "sp_eliminarAfiliados"
                Eliminar(sp,id)
                QMessageBox.information(self, "Éxito", "Se ha eliminado el registro correctamente.")
                self.close()
                self.menu_registros.mostrar_listarAfiliados()
        else:
            QMessageBox.warning(self, "Advertencia", "Necesita seleccionar un registro primero.")

    def exportarPdf(self):

            if not self.lineEdit.text():
                QMessageBox.warning(self, "Alerta", "Necesita seleccionar un registro primero")
            else:
                respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar el registro seleccionado a PDF?", QMessageBox.Yes | QMessageBox.No)

                if respuesta == QMessageBox.Yes:
                    nombre = self.lineEdit_1.text()
                    apellido = self.lineEdit_2.text()
                    vivienda = self.lineEdit_3.text()
                    dni = self.lineEdit_4.text()
                    fecha_nacimiento = self.dateEdit.date().toString("dd-MM-yyyy")
                    celular = self.spinBox.value()
                    nombre_entidad_bancaria = self.lineEdit_5.text()
                    numer_cuenta_bancaria = self.lineEdit_6.text()
                    numero_cci_bancario = self.lineEdit_7.text()
                    puesto_trabajo = self.lineEdit_8.text()
                    zona_laboral = self.lineEdit_9.text()
                    fecha_kmmp = self.dateEdit_2.date().toString("dd-MM-yyyy")
                    fecha_sindical = self.dateEdit_3.date().toString("dd-MM-yyyy")
                    estado = self.comboBox.currentText()

                    ruta_actual = os.path.abspath(os.path.dirname(__file__))
                    ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_registro_afiliados.html")
                    with open(ruta_template, "r") as archivo_html_template:
                        contenido_template = archivo_html_template.read()
                    template = Template(contenido_template)

                    html_renderizado = template.render(nombre=nombre, apellido=apellido, vivienda=vivienda, dni=dni,
                                                    fecha_nacimiento=fecha_nacimiento, celular=celular,
                                                    nombre_entidad_bancaria=nombre_entidad_bancaria,
                                                    numer_cuenta_bancaria=numer_cuenta_bancaria,
                                                    numero_cci_bancario=numero_cci_bancario, puesto_trabajo=puesto_trabajo,
                                                    zona_laboral=zona_laboral, fecha_kmmp=fecha_kmmp,
                                                    fecha_sindical=fecha_sindical, estado=estado)

                    ruta_resultado = os.path.join(ruta_actual, "..", "utils", "registro_afiliados.html")
                    with open(ruta_resultado, "w") as archivo_html_resultado:
                        archivo_html_resultado.write(html_renderizado)

                    dialogo = QFileDialog()
                    dialogo.setAcceptMode(QFileDialog.AcceptSave)
                    dialogo.setNameFilter("Archivos PDF (*.pdf)")
                    dialogo.setDefaultSuffix("pdf")

                    nombre_archivo = f"Afiliado - {nombre} {apellido}.pdf"
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
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar la ventana de registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
        else:
            pass 
