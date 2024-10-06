from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QSizePolicy, QFileDialog
from models.ui_registro_dirigentes import Ui_MainWindow as Ui_MainWindow_RegistroDirigentes
from models.ui_lista_dirigentes import Ui_MainWindow as Ui_MainWindow_ListaDirigentes
from PySide6.QtGui import QIntValidator
from PySide6.QtCore import QDate, Qt
from datetime import date, timedelta
from jinja2 import Template
from sqlalchemy import text
import pandas as pd
import datetime
import pdfkit
import os

class ListarDirigentes(QMainWindow, Ui_MainWindow_ListaDirigentes):
    def __init__(self, menu_registros, engine):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.menu_registros = menu_registros
        self.engine = engine

        self.load()

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)

        self.lineEdit.textChanged.connect(self.buscar)
        self.tableWidget.itemDoubleClicked.connect(self.enviarSeleccionado)

    def load(self):
        self.tableWidget.setColumnHidden(0, True)
        self.listar()
        
    def listar(self):
        query = "CALL sp_obtener_dirigentes()"
        df_dirigentes = pd.read_sql(query, self.engine)

        if not df_dirigentes.empty:
            num_columns = len(df_dirigentes.columns)
            self.tableWidget.setColumnCount(num_columns)
            self.tableWidget.setRowCount(len(df_dirigentes))

            for row_idx, row in df_dirigentes.iterrows():
                for col_idx, cell_data in enumerate(row):
                    item = QTableWidgetItem(str(cell_data))
                    self.tableWidget.setItem(row_idx, col_idx, item)

                    if col_idx in [4, 5]:
                        fecha_str = cell_data.strftime("%d-%m-%Y")
                        item.setText(fecha_str)
                    elif col_idx == 7:
                        item.setText("VIGENTE" if cell_data == 1 else "RETIRADO")
                    elif col_idx == 8:
                        secretarias = {
                            1: "Secretario General",
                            2: "Secretario Adjunto",
                            3: "Secretario de Defensa",
                            4: "Secretario de Organizacion",
                            5: "Secretario de Economia",
                            6: "Secretario de Asistencia Social",
                            7: "Secretario de Prensa y Propaganda",
                            8: "Secretario de Seguridad y Salud laboral",
                            9: "Secretario de Actas y Archivos"
                        }
                        item.setText(secretarias.get(cell_data, "Desconocido"))

            self.tableWidget.resizeColumnsToContents()
        else:
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")


    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo Registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarDirigentes()

    def exportarPdf(self):
        respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar la lista a PDF?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            results = []
            for row in range(self.tableWidget.rowCount()):
                row_data = []
                for column in range(self.tableWidget.columnCount()):
                    item = self.tableWidget.item(row, column)
                    row_data.append(item.text() if item else '')
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

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar el listado actual?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()

    def buscar(self, texto):
        num_filas = self.tableWidget.rowCount()
        for fila in range(num_filas):
            item_dni = self.tableWidget.item(fila, 3)
            item_nombre = self.tableWidget.item(fila, 1)
            item_apellido = self.tableWidget.item(fila, 2)

            if item_dni and item_nombre and item_apellido:
                dni = item_dni.text().lower()
                nombre = item_nombre.text().lower()
                apellido = item_apellido.text().lower()

                if texto.lower() in dni or texto.lower() in nombre or texto.lower() in apellido:
                    self.tableWidget.setRowHidden(fila, False)
                else:
                    self.tableWidget.setRowHidden(fila, True)

    def enviarSeleccionado(self, item):
        row = item.row()
        data = [self.tableWidget.item(row, col).text() for col in range(self.tableWidget.columnCount())]

        self.registrar = RegistrarDirigentes(self.menu_registros, self.engine, data)
        self.registrar.lineEdit.setText(data[0])
        self.registrar.lineEdit_2.setText(data[1].upper())
        self.registrar.lineEdit_3.setText(data[2].upper())
        self.registrar.spinBox_2.setValue(int(data[3]))

        fecha_formateada = data[4].split()[0]
        self.registrar.dateEdit.setDate(QDate.fromString(fecha_formateada, "dd-MM-yyyy"))

        fecha_formateada = data[5].split()[0]
        self.registrar.dateEdit_2.setDate(QDate.fromString(fecha_formateada, "dd-MM-yyyy"))

        self.registrar.spinBox.setValue(int(data[6]))

        if data[7] == "VIGENTE":
            self.registrar.comboBox.setCurrentIndex(0)
        else:
            self.registrar.comboBox.setCurrentIndex(1)

        secretarias = {
            "Secretario General": 0,
            "Secretario Adjunto": 1,
            "Secretario de Defensa": 2,
            "Secretario de Organizacion": 3,
            "Secretario de Economia": 4,
            "Secretario de Asistencia Social": 5,
            "Secretario de Prensa y Propaganda": 6,
            "Secretario de Seguridad y Salud laboral": 7,
            "Secretario de Actas y Archivos": 8
        }
        self.registrar.comboBox_2.setCurrentIndex(secretarias.get(data[8], 0))

        self.menu_registros.layout.addWidget(self.registrar)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        self.close()

class RegistrarDirigentes(QMainWindow, Ui_MainWindow_RegistroDirigentes):
    def __init__(self, menu_registros, engine=None, data=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.engine = engine
        self.menu_registros = menu_registros

        self.load()

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionGrabar.triggered.connect(self.grabar)
        self.actionEliminar.triggered.connect(self.eliminar)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)

        self.dateEdit.dateChanged.connect(self.actualizar_dias_Periodo)
        self.dateEdit_2.dateChanged.connect(self.actualizar_dias_Periodo)

    def load(self):
        today = date.today()
        self.dateEdit.setDate(today)

        two_years_later = today + timedelta(days=365 * 2)
        self.dateEdit_2.setDate(two_years_later)

        self.actualizar_dias_Periodo()

    def actualizar_dias_Periodo(self):
        inicio_date = self.dateEdit.date().toPython()
        termino_date = self.dateEdit_2.date().toPython()
        dias_periodo = (termino_date - inicio_date).days
        self.spinBox.setValue(dias_periodo)

    def obtener_datos_dirigente(self):
        id = self.lineEdit.text()
        nombre = self.lineEdit_2.text().upper()
        apellido = self.lineEdit_3.text().upper()
        dni = self.spinBox_2.value()
        inicio_periodo = self.dateEdit.date().toString("yyyy-MM-dd")
        termino_periodo = self.dateEdit_2.date().toString("yyyy-MM-dd")
        dias_periodo = self.spinBox.value()
        vigencia = "1" if self.comboBox.currentIndex() == 0 else "0"
        secretaria = self.comboBox_2.currentIndex() + 1

        id = int(id) if id.isdigit() else None

        return {
            'id': id,
            'nombre': nombre,
            'apellido': apellido,
            'dni': dni,
            'inicioPeriodo': inicio_periodo,
            'terminoPeriodo': termino_periodo,
            'diasPeriodo': dias_periodo,
            'estado': vigencia,
            'id_secretaria': secretaria,
        }

    def grabar(self):
        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea grabar un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            datos_dirigente = self.obtener_datos_dirigente()

            if datos_dirigente['nombre'] and datos_dirigente['apellido'] and datos_dirigente['dni']:
                with self.engine.begin() as conn:
                    grabar_stmt = text("""
                        CALL sp_insertar_actualizar_dirigente(:id, :nombre, :apellido, :dni, :inicioPeriodo, 
                                                            :terminoPeriodo, :diasPeriodo, :estado, :id_secretaria);
                    """)
                    conn.execute(grabar_stmt, datos_dirigente)
                    
                    if datos_dirigente['id']:
                        QMessageBox.information(self, "Éxito", "Se ha editado el dirigente correctamente.")
                    else:
                        QMessageBox.information(self, "Éxito", "Se ha guardado el dirigente correctamente.")
                self.close()
                self.menu_registros.mostrar_listarDirigentes()
            else:
                QMessageBox.warning(self, "Advertencia", "Los campos que contienen un (*) son obligatorios.")

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarDirigentes()

    def eliminar(self):
        id_str = self.lineEdit.text()
        if id_str.isdigit():
            respuesta = QMessageBox.question(self, "Confirmar deshabilitacion", "¿Estás seguro de deshabilitar el registro?", QMessageBox.Yes | QMessageBox.No)
            if respuesta == QMessageBox.Yes:
                datos_dirigente = self.obtener_datos_dirigente()
                with self.engine.begin() as conn:
                    update_stmt = text("CALL sp_deshabilitar_dirigente(:id);")
                    conn.execute(update_stmt, {'id': datos_dirigente['id']})
                QMessageBox.information(self, "Éxito", "Se ha deshabilitado el registro correctamente.")
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
                nombre = self.lineEdit_2.text().upper()
                apellido = self.lineEdit_3.text().upper()
                dni = self.spinBox_2.value()
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

                nombre_archivo = f"Dirigente - {nombre} {apellido}.pdf"
                dialogo.selectFile(nombre_archivo)

                if dialogo.exec():
                    rutas_seleccionadas = dialogo.selectedFiles()
                    if rutas_seleccionadas:
                        ruta_pdf = rutas_seleccionadas[0]
                        options = {'enable-local-file-access': None}
                        pdfkit.from_file(ruta_resultado, ruta_pdf, options=options)

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar la ventana de registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()

    def showEvent(self, event):
        self.actualizar_dias_Periodo()
        super().showEvent(event)