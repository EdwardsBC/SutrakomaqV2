from models.ui_registro_afiliados import Ui_MainWindow as Ui_MainWindow_RegistroAfiliados
from models.ui_lista_afiliados import Ui_MainWindow as Ui_MainWindow_ListaAfiliados
from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QSizePolicy, QFileDialog, QWidget
from PySide6.QtCore import QDate, Qt
from datetime import datetime
from jinja2 import Template
from sqlalchemy import text
import pandas as pd
import pdfkit
import os

class ListarAfiliados(QMainWindow, Ui_MainWindow_ListaAfiliados):
    def __init__(self, menu_registros, engine):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)
        self.menu_registros = menu_registros
        self.engine = engine
        self._connect_signals()
        self.load()

    def _connect_signals(self):
        """Conecta las señales a sus respectivos métodos."""
        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)
        self.lineEdit.textChanged.connect(self.buscar)
        self.tableWidget.cellDoubleClicked.connect(self.enviarSeleccionado)

    def load(self):
        """Carga los datos iniciales en la tabla."""
        self.tableWidget.setColumnHidden(0, True)
        self.listar()

    def listar(self):
        """Lista los afiliados en la tabla desde la base de datos."""
        query = text("CALL sp_listar_afiliados()")
        df_afiliados = pd.read_sql(query, self.engine)

        estados = {
            "AFILIADO": "AFILIADO",
            "DESAFILIADO": "DESAFILIADO",
            "SUSPENSION PERFECTA": "SUSPENSION PERFECTA",
            "CESADO": "CESADO",
        }

        if not df_afiliados.empty:
            self._populate_table(df_afiliados, estados)

        self.tableWidget.resizeColumnsToContents()

    def _populate_table(self, df_afiliados, estados):
        """Llena la tabla con los datos de afiliados."""
        for row_idx, row in df_afiliados.iterrows():
            row_data = self._process_row(row, estados)
            self.tableWidget.insertRow(row_idx)
            
            for col_idx, data in enumerate(row_data):
                item = QTableWidgetItem(data)
                if col_idx in [6, 13, 14]:
                    item.setTextAlignment(Qt.AlignRight | Qt.AlignVCenter)
                self.tableWidget.setItem(row_idx, col_idx, item)

    def _process_row(self, row, estados):
        """Procesa una fila de datos y devuelve una lista de valores formateados."""
        row_data = []
        for col_idx, cell_data in enumerate(row):
            if col_idx == len(row) - 1:
                row_data.append(estados.get(cell_data, "PROCESO JUICIO"))
            elif col_idx in [6, 13, 14]:
                fecha_str = cell_data.strftime("%d/%m/%Y")
                row_data.append(fecha_str)
            else:
                row_data.append(str(cell_data))
        return row_data

    def nuevo(self):
        if QMessageBox.question(self, "Nuevo Registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No) == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarAfiliados()

    def exportarPdf(self):
        """Exporta la lista de afiliados a un archivo PDF."""
        
        if QMessageBox.question(self,"Exportar a PDF", "¿Desea exportar la lista a PDF?",QMessageBox.Yes | QMessageBox.No) == QMessageBox.Yes:
            results = self._get_table_data()
            ruta_template = self._get_template_path()
            
            html_renderizado = self._render_html(results, ruta_template)
            ruta_resultado = self._get_output_path("listado_afiliados.html")
            self._save_html(ruta_resultado, html_renderizado)

            ruta_pdf = self._select_pdf_save_path()
            if ruta_pdf:
                options = {'enable-local-file-access': None}
                pdfkit.from_file(ruta_resultado, ruta_pdf, options=options)

    def _get_table_data(self):
        """Recopila los datos de la tabla y los devuelve como una lista de listas."""
        results = []
        for row in range(self.tableWidget.rowCount()):
            row_data = []
            for column in range(self.tableWidget.columnCount()):
                item = self.tableWidget.item(row, column)
                row_data.append(item.text() if item is not None else '')
            results.append(row_data)
        return results

    def _get_template_path(self):
        """Devuelve la ruta del archivo de plantilla HTML."""
        ruta_actual = os.path.abspath(os.path.dirname(__file__))
        return os.path.join(ruta_actual, "..", "utils", "plantilla_lista_afiliados.html")

    def _render_html(self, results, ruta_template):
        """Rinde el contenido HTML utilizando la plantilla y los datos proporcionados."""
        with open(ruta_template, "r") as archivo_html_template:
            contenido_template = archivo_html_template.read()
        template = Template(contenido_template)
        return template.render(results=results)

    def _get_output_path(self, filename):
        """Devuelve la ruta de salida para el archivo HTML generado."""
        ruta_actual = os.path.abspath(os.path.dirname(__file__))
        return os.path.join(ruta_actual, "..", "utils", filename)

    def _save_html(self, ruta_resultado, html_renderizado):
        """Guarda el contenido HTML renderizado en un archivo."""
        with open(ruta_resultado, "w") as archivo_html_resultado:
            archivo_html_resultado.write(html_renderizado)

    def _select_pdf_save_path(self):
        """Abre un diálogo para seleccionar la ruta donde guardar el PDF."""
        dialogo = QFileDialog()
        dialogo.setAcceptMode(QFileDialog.AcceptSave)
        dialogo.setNameFilter("Archivos PDF (*.pdf)")
        dialogo.setDefaultSuffix("pdf")

        fecha_actual = datetime.now().strftime("%d-%m-%Y")
        nombre_archivo = f"Lista de afiliados - {fecha_actual}.pdf"
        dialogo.selectFile(nombre_archivo)

        if dialogo.exec():
            rutas_seleccionadas = dialogo.selectedFiles()
            return rutas_seleccionadas[0] if rutas_seleccionadas else None
        return None

    def cerrar(self):
        if QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar el listado actual?", QMessageBox.Yes | QMessageBox.No) == QMessageBox.Yes:
            self.close()

    def buscar(self, texto):
        """Busca en la tabla afiliados y muestra las filas que coinciden con el texto proporcionado."""
        texto_buscado = texto.lower()
        num_filas = self.tableWidget.rowCount()

        for fila in range(num_filas):
            if self._should_show_row(fila, texto_buscado):
                self.tableWidget.setRowHidden(fila, False)
            else:
                self.tableWidget.setRowHidden(fila, True)

    def _should_show_row(self, fila, texto_buscado):
        """Determina si la fila debe mostrarse según el texto buscado."""
        item_dni = self.tableWidget.item(fila, 5)
        item_nombre = self.tableWidget.item(fila, 1)
        item_apellido = self.tableWidget.item(fila, 2)

        if item_dni is not None and item_nombre is not None and item_apellido is not None:
            dni = item_dni.text()
            nombre = item_nombre.text().lower()
            apellido = item_apellido.text().lower()

            return (texto_buscado in dni.lower() or 
                    texto_buscado in nombre or 
                    texto_buscado in apellido)
        
        return False

    def enviarSeleccionado(self, row, column):
        num_columnas = self.tableWidget.columnCount()
        data = []
        for col_idx in range(num_columnas):
            item = self.tableWidget.item(row, col_idx)
            if item is not None:
                data.append(item.text())
            else:
                data.append("")

        self.registrar_afiliados = RegistrarAfiliados(self.menu_registros, self.engine, data)

        self.registrar_afiliados.lineEdit.setText(data[0]) 
        self.registrar_afiliados.lineEdit_1.setText(data[1])
        self.registrar_afiliados.lineEdit_2.setText(data[2])
        self.registrar_afiliados.lineEdit_3.setText(data[3])
        self.registrar_afiliados.lineEdit_10.setText(data[4])
        self.registrar_afiliados.spinBox_7.setValue(int(data[5]))

        def convertir_fecha(fecha_texto):
            qdate = QDate.fromString(fecha_texto, "dd-MM-yyyy")
            if not qdate.isValid():
                qdate = QDate.fromString(fecha_texto, "yyyy-MM-dd")
            if not qdate.isValid():
                qdate = QDate.fromString(fecha_texto, "dd/MM/yyyy")
            return qdate if qdate.isValid() else None
        fecha_formateada = data[6].split()[0]
        qdate = convertir_fecha(fecha_formateada)
        if qdate:
            self.registrar_afiliados.dateEdit.setDate(qdate)

        self.registrar_afiliados.spinBox.setValue(int(data[7]))
        self.registrar_afiliados.lineEdit_5.setText(data[8])
        self.registrar_afiliados.lineEdit_6.setText(data[9])
        self.registrar_afiliados.lineEdit_7.setText(data[10])
        self.registrar_afiliados.lineEdit_8.setText(data[11])
        self.registrar_afiliados.lineEdit_9.setText(data[12])

        fecha_formateada = data[13].split()[0]
        qdate2 = convertir_fecha(fecha_formateada)
        if qdate2:
            self.registrar_afiliados.dateEdit_2.setDate(qdate2)

        fecha_formateada = data[14].split()[0]
        qdate3 = convertir_fecha(fecha_formateada)
        if qdate3:
            self.registrar_afiliados.dateEdit_3.setDate(qdate3)

        estado = data[15]
        if estado == "AFILIADO":
            self.registrar_afiliados.comboBox.setCurrentIndex(0)
        elif estado == "DESAFILIADO":
            self.registrar_afiliados.comboBox.setCurrentIndex(1)
        elif estado == "SUSPENSION PERFECTA":
            self.registrar_afiliados.comboBox.setCurrentIndex(2)
        elif estado == "CESADO":
            self.registrar_afiliados.comboBox.setCurrentIndex(3)
        else:
            self.registrar_afiliados.comboBox.setCurrentIndex(4)

        id_afiliado = data[0]
        query = "CALL sp_obtener_escolaridades(%s)"
        
        try:
            result = pd.read_sql(query, self.engine, params=(id_afiliado,))
            if not result.empty:
                self.registrar_afiliados.spinBox_2.setValue(result.iloc[0]['nacido'])
                self.registrar_afiliados.spinBox_3.setValue(result.iloc[0]['inicial'])
                self.registrar_afiliados.spinBox_4.setValue(result.iloc[0]['primaria'])
                self.registrar_afiliados.spinBox_5.setValue(result.iloc[0]['secundaria'])
                self.registrar_afiliados.spinBox_6.setValue(result.iloc[0]['superior'])
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Error en la consulta de escolaridad: {e}")

        self.menu_registros.layout.addWidget(self.registrar_afiliados)
        self.registrar_afiliados.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

        self.close()

class RegistrarAfiliados(QMainWindow, Ui_MainWindow_RegistroAfiliados):
    def __init__(self, menu_registros, engine=None, data=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)
        self.load()

        self.engine = engine
        self.menu_registros = menu_registros

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionGrabar.triggered.connect(self.grabar_afiliado)
        self.actionEliminar.triggered.connect(self.eliminar_afiliado)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)

    def load(self):
        date = QDate.fromString("01/01/1950", "dd/MM/yyyy")
        self.dateEdit.setDate(date)
        self.dateEdit_2.setDate(QDate.currentDate())
        self.dateEdit_3.setDate(QDate.currentDate())

    def obtener_datos_afiliado(self):
        id = self.lineEdit.text()
        id = int(id) if id.isdigit() else None
        nombre = self.lineEdit_1.text().upper()
        apellido = self.lineEdit_2.text().upper()
        lugar_vivienda = self.lineEdit_3.text().upper()
        residencia = self.lineEdit_10.text().upper()
        dni = self.spinBox_7.value()
        fecha_nacimiento = self.dateEdit.date().toString("yyyy-MM-dd")
        celular = self.spinBox.value()
        nombre_entidad_bancaria = self.lineEdit_5.text().upper()
        numero_cuenta_bancaria = self.lineEdit_6.text()
        numero_cci_bancario = self.lineEdit_7.text()
        puesto_trabajo = self.lineEdit_8.text().upper()
        zona_laboral = self.lineEdit_9.text().upper()
        fecha_ingreso_kmmp = self.dateEdit_2.date().toString("yyyy-MM-dd")
        fecha_ingreso_sindical = self.dateEdit_3.date().toString("yyyy-MM-dd")
        estado = self.comboBox.currentText().upper()

        return {
            'id': id,
            'nombre': nombre,
            'apellido': apellido,
            'lugarVivienda': lugar_vivienda,
            'residencia': residencia,
            'dni': dni,
            'fechaNacimiento': fecha_nacimiento,
            'celular': celular,
            'nombreBancario': nombre_entidad_bancaria,
            'numeroBancario': numero_cuenta_bancaria,
            'CCIBancario': numero_cci_bancario,
            'puestoTrabajo': puesto_trabajo,
            'zonaLaboral': zona_laboral,
            'fechaIngresoKMMP': fecha_ingreso_kmmp,
            'fechaIngresoSindical': fecha_ingreso_sindical,
            'estado': estado
        }

    def grabar_afiliado(self):
        if not self.validar_datos():
            return

        datos_afiliado = self.obtener_datos_afiliado()
        datos_escolaridad = {
            'id_afiliado': datos_afiliado['id'],
            'nacido': int(self.spinBox_2.value()),
            'inicial': int(self.spinBox_3.value()),
            'primaria': int(self.spinBox_4.value()),
            'secundaria': int(self.spinBox_5.value()),
            'superior': int(self.spinBox_6.value())
        }

        try:
            with self.engine.begin() as conn:
                grabar_afiliado_stmt = text("""
                    CALL sp_insertar_actualizar_afiliado(
                        :id, :nombre, :apellido, :lugarVivienda, :residencia, :dni, :fechaNacimiento, 
                        :celular, :nombreBancario, :numeroBancario, :CCIBancario, :puestoTrabajo, 
                        :zonaLaboral, :fechaIngresoKMMP, :fechaIngresoSindical, :estado, :nacido, 
                        :inicial, :primaria, :secundaria, :superior)
                """)

                conn.execute(grabar_afiliado_stmt, {**datos_afiliado, **datos_escolaridad})

            QMessageBox.information(self, "Éxito", "Registro actualizado o guardado correctamente.")
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Error en la operación de grabación: {e}")

        self.menu_registros.mostrar_listarAfiliados()
        self.close()


    def eliminar_afiliado(self):
        id_str = self.lineEdit.text()
        if id_str.isdigit():
            respuesta = QMessageBox.question(self, "Confirmar deshabilitación", "¿Estás seguro de deshabilitar el registro?", QMessageBox.Yes | QMessageBox.No)

            if respuesta == QMessageBox.Yes:
                datos_afiliado = self.obtener_datos_afiliado()
                with self.engine.begin() as conn:
                    update_stmt = text("CALL sp_deshabilitar_afiliado(:id);")
                    conn.execute(update_stmt, {'id': datos_afiliado['id']})

                QMessageBox.information(self, "Éxito", "Se ha deshabilitado el registro correctamente.")
                self.menu_registros.mostrar_listarAfiliados()
                self.close()
            else:
                QMessageBox.warning(self, "Advertencia", "Operación cancelada.")
        else:
            QMessageBox.warning(self, "Advertencia", "Necesita seleccionar un registro primero.")

    def validar_datos(self):
        if not self.lineEdit_1.text() or not self.lineEdit_2.text() or not self.spinBox_7.value():
            QMessageBox.warning(self, "Error de validación", "Nombre, Apellido y DNI son obligatorios.")
            return False
        return True

    def nuevo(self):
        if QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No) == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarAfiliados()

    def exportarPdf(self):
        if not self.lineEdit.text():
            QMessageBox.warning(self, "Alerta", "Necesita seleccionar un registro primero")
        else:
            respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar el registro seleccionado a PDF?", QMessageBox.Yes | QMessageBox.No)

            if respuesta == QMessageBox.Yes:
                nombre = self.lineEdit_1.text()
                apellido = self.lineEdit_2.text()
                vivienda = self.lineEdit_3.text()
                residencia = self.lineEdit_10.text()
                dni = self.spinBox_7.value()
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

                html_renderizado = template.render(
                    nombre=nombre, apellido=apellido, vivienda=vivienda, residencia=residencia, dni=dni,
                    fecha_nacimiento=fecha_nacimiento, celular=celular, nombre_entidad_bancaria=nombre_entidad_bancaria,
                    numer_cuenta_bancaria=numer_cuenta_bancaria, numero_cci_bancario=numero_cci_bancario,
                    puesto_trabajo=puesto_trabajo, zona_laboral=zona_laboral, fecha_kmmp=fecha_kmmp,
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

    def cerrar(self):
        if QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar la ventana de registro?", QMessageBox.Yes | QMessageBox.No) == QMessageBox.Yes:
            self.close()