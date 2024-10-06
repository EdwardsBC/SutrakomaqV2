from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QFileDialog, QComboBox, QProgressBar, QVBoxLayout, QDialog, QSizePolicy
from models.ui_registro_asistencia_dirigente import Ui_MainWindow as Ui_MainWindow_registroAsistenciasDirigentes
from models.ui_registro_asistencias import Ui_MainWindow as Ui_MainWindow_RegistroAsistencias
from models.ui_lista_asistencias import Ui_MainWindow as Ui_MainWindow_ListaAsistencias
from sqlalchemy import text
from PySide6.QtCore import Qt, QDate
from functools import partial
from jinja2 import Template
import pandas as pd
import datetime
import pdfkit
import os
import json

class ListarAsistencias(QMainWindow, Ui_MainWindow_ListaAsistencias):
    def __init__(self,menu_registros, engine):
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
        self.tableWidget.cellDoubleClicked.connect(self.enviarSeleccionado)

    def load(self):
        self.tableWidget.setColumnHidden(0, True)
        self.listar()

    def listar(self):
        query = """
            SELECT id, asamblea, fecha, descripcion
            FROM asistencias_cab
            ORDER BY fecha DESC;
        """
        df_asistencias = pd.read_sql(query, self.engine)

        if not df_asistencias.empty:
            num_columns = len(df_asistencias.columns)
            self.tableWidget.setColumnCount(num_columns)
            self.tableWidget.setRowCount(len(df_asistencias))

            for row_idx, row in df_asistencias.iterrows():
                for col_idx, cell_data in enumerate(row):
                    item = QTableWidgetItem(str(cell_data))
                    self.tableWidget.setItem(row_idx, col_idx, item)

                    if col_idx == 2:
                        fecha_str = cell_data.strftime("%d-%m-%Y")
                        item.setText(fecha_str)

            self.tableWidget.resizeColumnsToContents()
        else:
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo Registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarAsistencias()


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
            ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_lista_asistencias.html")

            with open(ruta_template, "r") as archivo_html_template:
                contenido_template = archivo_html_template.read()
            template = Template(contenido_template)

            html_renderizado = template.render(results=results)

            ruta_resultado = os.path.join(ruta_actual, "..", "utils", "listado_asistencias.html")
            with open(ruta_resultado, "w") as archivo_html_resultado:
                archivo_html_resultado.write(html_renderizado)

            dialogo = QFileDialog()
            dialogo.setAcceptMode(QFileDialog.AcceptSave)
            dialogo.setNameFilter("Archivos PDF (*.pdf)")
            dialogo.setDefaultSuffix("pdf")

            fecha_actual = datetime.datetime.now().strftime("%d-%m-%Y")
            nombre_archivo = f"Lista de Asistencias - {fecha_actual}.pdf"
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
            asamblea = self.tableWidget.item(fila, 1)
            descripcion = self.tableWidget.item(fila, 3)

            if asamblea is not None and descripcion is not None:
                asam = asamblea.text()
                desc = descripcion.text().lower()

                if texto.lower() in asam.lower() or texto.lower() in desc:
                    self.tableWidget.setRowHidden(fila, False)
                else:
                    self.tableWidget.setRowHidden(fila, True)
                    
    def enviarSeleccionado(self):
        row = self.tableWidget.currentRow()
        id = self.tableWidget.item(row, 0).text()

        descripcion = self.tableWidget.item(row, 3).text()

        justificacion_items = ["", "VACACIONES", "DESCANSO MÉDICO", "FALLECIMIENTO", "AMANECIDA", "GOSE SIN HABER", "SUSPENSIÓN PERFECTA", "OTROS"]

        if descripcion == "Asamblea de Afiliados":
            query_afiliados = "CALL sp_listar_asistencias_afiliados(%s)"
            asistencias = pd.read_sql(query_afiliados, self.engine, params=(id,))

            self.registrar = RegistrarAsitencias(self.menu_registros, self.engine, asistencias)

            self.registrar.lineEdit.setText(self.tableWidget.item(row, 0).text())
            self.registrar.comboBox.setCurrentText(self.tableWidget.item(row, 1).text())
            fecha = QDate.fromString(self.tableWidget.item(row, 2).text(), "dd-MM-yyyy")
            self.registrar.dateEdit.setDate(fecha)

            for asistencia in asistencias.itertuples():
                if asistencia.asistencia == 'ASISTIO':
                    tableWidget = self.registrar.tableWidget
                else:
                    tableWidget = self.registrar.tableWidget_2

                row_position = tableWidget.rowCount()
                tableWidget.insertRow(row_position)

                tableWidget.setItem(row_position, 0, QTableWidgetItem(str(asistencia.id_afiliado)))
                tableWidget.setItem(row_position, 1, QTableWidgetItem(asistencia.apellido))
                tableWidget.setItem(row_position, 2, QTableWidgetItem(asistencia.nombre))
                tableWidget.setItem(row_position, 3, QTableWidgetItem(asistencia.dni))

                comboAsistencias = QComboBox()
                comboAsistencias.addItems(["ASISTIO", "FALTA", "JUSTIFICADO"])
                comboAsistencias.setCurrentText(asistencia.asistencia)
                tableWidget.setCellWidget(row_position, 4, comboAsistencias)

                tableWidget.setItem(row_position, 5, QTableWidgetItem(str(asistencia.multa)))

                comboJustificaciones = QComboBox()
                comboJustificaciones.addItems(justificacion_items)

                if asistencia.observacion in justificacion_items:
                    comboJustificaciones.setCurrentText(asistencia.observacion)
                else:
                    comboJustificaciones.setCurrentIndex(0)

                tableWidget.setCellWidget(row_position, 6, comboJustificaciones)

            items = ["ASISTIO", "FALTA", "JUSTIFICADO"]

            for row in range(self.registrar.tableWidget.rowCount()):
                comboAsistencias = self.registrar.tableWidget.cellWidget(row, 4)
                comboAsistencias.currentIndexChanged.connect(partial(self.registrar.actualizar_por_asistencia, self.registrar.tableWidget, row))

                comboJustificaciones = self.registrar.tableWidget.cellWidget(row, 6)
                comboAsistencias.currentIndexChanged.connect(partial(self.toggle_justificacion, comboJustificaciones, comboAsistencias))

            for row in range(self.registrar.tableWidget_2.rowCount()):
                comboAsistencias = self.registrar.tableWidget_2.cellWidget(row, 4)

                if comboAsistencias.currentText() == "FALTA":
                    comboAsistencias.setCurrentIndex(1)
                elif comboAsistencias.currentText() == "JUSTIFICADO":
                    comboAsistencias.setCurrentIndex(2)
                    comboJustificaciones = QComboBox()
                    comboJustificaciones.addItems(justificacion_items)

                    comboExistente = self.registrar.tableWidget_2.cellWidget(row, 6)

                    if comboExistente:
                        justificacion = comboExistente.currentText()
                        if justificacion in justificacion_items:
                            comboJustificaciones.setCurrentText(justificacion)
                        else:
                            comboJustificaciones.setCurrentIndex(0)

                    self.registrar.tableWidget_2.setCellWidget(row, 6, comboJustificaciones)

                    comboAsistencias.currentIndexChanged.connect(partial(self.toggle_justificacion, comboJustificaciones, comboAsistencias))

                comboAsistencias.currentIndexChanged.connect(partial(self.registrar.actualizar_por_asistencia, self.registrar.tableWidget_2, row))
                self.registrar.tableWidget_2.setCellWidget(row, 4, comboAsistencias)

            self.close()
            self.registrar.tableWidget.resizeColumnsToContents()
            self.registrar.tableWidget_2.resizeColumnsToContents()

            self.menu_registros.layout.addWidget(self.registrar)
            self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

            self.registrar.spinBox.setValue(self.registrar.tableWidget.rowCount())
            self.registrar.spinBox_2.setValue(self.registrar.tableWidget_2.rowCount())

        else:
            query_dirigentes = "CALL sp_listar_asistencias_dirigentes(%s)"
            asistencias = pd.read_sql(query_dirigentes, self.engine, params=(id,))

            self.registrar = RegistrarAsistenciasDirigentes(self.menu_registros, self.engine, asistencias)

            self.registrar.lineEdit.setText(self.tableWidget.item(row, 0).text())
            self.registrar.comboBox.setCurrentText(self.tableWidget.item(row, 1).text())
            fecha = QDate.fromString(self.tableWidget.item(row, 2).text(), "dd-MM-yyyy")
            self.registrar.dateEdit.setDate(fecha)

            for i, row_data in asistencias.iterrows():
                row_position = self.registrar.tableWidget.rowCount()
                self.registrar.tableWidget.insertRow(row_position)
                for j, value in enumerate(row_data):
                    if j == 4:
                        comboAsistencias = QComboBox()
                        comboAsistencias.addItems(["ASISTIO", "FALTA", "JUSTIFICADO"])
                        comboAsistencias.setCurrentText(value)
                        self.registrar.tableWidget.setCellWidget(row_position, j, comboAsistencias)
                    elif j == 6:
                        comboJustificaciones = QComboBox()
                        comboJustificaciones.addItems(justificacion_items)
                        if value in justificacion_items:
                            comboJustificaciones.setCurrentText(value)
                        else:
                            comboJustificaciones.setCurrentIndex(0)
                        self.registrar.tableWidget.setCellWidget(row_position, j, comboJustificaciones)
                    else:
                        self.registrar.tableWidget.setItem(row_position, j, QTableWidgetItem(str(value)))

            self.close()
            self.registrar.tableWidget.resizeColumnsToContents()

            self.menu_registros.layout.addWidget(self.registrar)
            self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

    def toggle_justificacion(self, comboJustificaciones, comboAsistencias, currentIndex=None):
        if comboAsistencias.currentText() == "JUSTIFICADO":
            pass
        else:
            comboJustificaciones.setCurrentIndex(0)

class RegistrarAsitencias(QMainWindow, Ui_MainWindow_RegistroAsistencias):
    def __init__(self,menu_registros, engine=None,data=None):
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
        self.actionImportar.triggered.connect(self.ImportarExcel)

        self.lineEdit_3.textChanged.connect(self.filtrar_Asistencias)
        self.lineEdit_4.textChanged.connect(self.filtrar_noAsistencias)

    def ImportarExcel(self):
        self.comboBox.currentIndexChanged.connect(self.actualizar_por_tipo_reunion)
        afiliado_col = 4
        items = ["ASISTIO", "FALTA", "JUSTIFICADO"]
        justificacion_items = ["", "VACACIONES", "DESCANSO MÉDICO", "FALLECIMIENTO", "AMANECIDA", "GOSE SIN HABER", "SUSPENSIÓN PERFECTA", "OTROS"]

        file_path, _ = QFileDialog.getOpenFileName(self, "Selecciona un archivo Excel", "", "Archivos Excel (*.xlsx *.xls)")
        if not file_path:
            return

        try:
            df = pd.read_excel(file_path, usecols=["Ingresar su DNI"])
        except Exception as e:
            print(f"Error al leer el archivo Excel: {e}")
            return

        dnis = df["Ingresar su DNI"].tolist()

        query_afiliados = "CALL sp_obtener_afiliados_asistencias()"
        afiliados = pd.read_sql(query_afiliados, self.engine).values.tolist()

        asistidos = []
        noasistidos = []

        dnis = [str(dni) for dni in dnis]

        for afiliado in afiliados:
            if str(afiliado[3]) in dnis:
                asistidos.append(afiliado)
            else:
                noasistidos.append(afiliado)

        def colocar_datos_en_tablewidget(table_widget, data_list):
            table_widget.setRowCount(len(data_list))
            for row, data in enumerate(data_list):
                for col, value in enumerate(data):
                    item = QTableWidgetItem(str(value))
                    table_widget.setItem(row, col, item)

        colocar_datos_en_tablewidget(self.tableWidget, asistidos)
        colocar_datos_en_tablewidget(self.tableWidget_2, noasistidos)

        for row in range(self.tableWidget.rowCount()):
            comboAsistencias = QComboBox()
            comboAsistencias.addItems(items)
            comboAsistencias.setCurrentIndex(0)
            comboAsistencias.currentIndexChanged.connect(partial(self.actualizar_por_asistencia, self.tableWidget, row))
            self.tableWidget.setCellWidget(row, afiliado_col, comboAsistencias)

            comboJustificaciones = QComboBox()
            comboJustificaciones.addItems(justificacion_items)
            self.tableWidget.setCellWidget(row, 6, comboJustificaciones)
            
            comboAsistencias.currentIndexChanged.connect(partial(self.toggle_justificacion, comboJustificaciones, comboAsistencias))

        for row in range(self.tableWidget_2.rowCount()):
            comboAsistencias = QComboBox()
            comboAsistencias.addItems(items)
            comboAsistencias.setCurrentIndex(1)
            comboAsistencias.currentIndexChanged.connect(partial(self.actualizar_por_asistencia, self.tableWidget_2, row))
            self.tableWidget_2.setCellWidget(row, afiliado_col, comboAsistencias)

            comboJustificaciones = QComboBox()
            comboJustificaciones.addItems(justificacion_items)
            self.tableWidget_2.setCellWidget(row, 6, comboJustificaciones)
            
            comboAsistencias.currentIndexChanged.connect(partial(self.toggle_justificacion, comboJustificaciones, comboAsistencias))

        self.actualizar_por_tipo_reunion()
        self.tableWidget.resizeColumnsToContents()
        self.tableWidget_2.resizeColumnsToContents()

        self.spinBox.setValue(self.tableWidget.rowCount())
        self.spinBox_2.setValue(self.tableWidget_2.rowCount())

    def load(self):
        self.dateEdit.setDate(QDate.currentDate())
        self.tableWidget_2.setColumnHidden(0, True)
        self.tableWidget.setColumnHidden(0, True)
        self.spinBox.setValue(self.tableWidget.rowCount())
        self.spinBox_2.setValue(self.tableWidget_2.rowCount())

    def filtrar_Asistencias(self):
        filtro = self.lineEdit_3.text().lower()
        for row in range(self.tableWidget.rowCount()):
            mostrar = False
            for col in range(1, 4):
                item = self.tableWidget.item(row, col)
                if item and filtro in item.text().lower():
                    mostrar = True
                    break
            self.tableWidget.setRowHidden(row, not mostrar)

    def filtrar_noAsistencias(self):
        filtro = self.lineEdit_4.text().lower()
        for row in range(self.tableWidget_2.rowCount()):
            mostrar = False
            for col in range(1, 4):
                item = self.tableWidget_2.item(row, col)
                if item and filtro in item.text().lower():
                    mostrar = True
                    break
            self.tableWidget_2.setRowHidden(row, not mostrar)

    def toggle_justificacion(self, comboJustificaciones, comboAsistencias, currentIndex=None):
        if comboAsistencias.currentText() == "JUSTIFICADO":
            pass
        else :
            comboJustificaciones.setCurrentIndex(0)

    def actualizar_por_tipo_reunion(self):
        tipo_reunion = self.comboBox.currentText()
        for tableWidget in [self.tableWidget, self.tableWidget_2]:
            for row in range(tableWidget.rowCount()):
                comboAsistencias = tableWidget.cellWidget(row, 4)
                if comboAsistencias.currentText() == "FALTA":
                    if tipo_reunion == "ORDINARIA":
                        tableWidget.setItem(row, 5, QTableWidgetItem("70.00"))
                    elif tipo_reunion == "EXTRAORDINARIA":
                        tableWidget.setItem(row, 5, QTableWidgetItem("50.00"))
                else:
                    tableWidget.setItem(row, 5, QTableWidgetItem("00.00"))

    def actualizar_por_asistencia(self, tableWidget, row, index):
        comboAsistencias = tableWidget.cellWidget(row, 4)
        asistencia = comboAsistencias.currentText()
        if asistencia == "ASISTIO":
            tableWidget.setItem(row, 5, QTableWidgetItem("00.00"))
        elif asistencia == "FALTA":
            tipo_reunion = self.comboBox.currentText()
            if tipo_reunion == "ORDINARIA":
                tableWidget.setItem(row, 5, QTableWidgetItem("70.00"))
            elif tipo_reunion == "EXTRAORDINARIA":
                tableWidget.setItem(row, 5, QTableWidgetItem("50.00"))
        else :
            tableWidget.setItem(row, 5, QTableWidgetItem("00.00"))
            
    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarAsistencias()
        else:
            pass 

    def grabar(self):
        respuesta = QMessageBox.question(self, "Guardar Registro", "¿Desea guardar las asistencias?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            id_asistencia = self.lineEdit.text()
            asamblea = self.comboBox.currentText()
            fecha = self.dateEdit.date().toString("yyyy-MM-dd")
            descripcion = "Asamblea de Afiliados"

            afiliados_detalle = []

            for tableWidget in [self.tableWidget, self.tableWidget_2]:
                for row in range(tableWidget.rowCount()):
                    id_afiliado = tableWidget.item(row, 0).text()
                    asistencia = tableWidget.cellWidget(row, 4).currentText()
                    multa = tableWidget.item(row, 5).text()
                    observacion_widget = tableWidget.cellWidget(row, 6)
                    observacion = observacion_widget.currentText() if observacion_widget else "-"

                    afiliado_data = {
                        'id_afiliado': id_afiliado,
                        'asistencia': asistencia,
                        'multa': multa,
                        'observacion': observacion
                    }
                    afiliados_detalle.append(afiliado_data)

            afiliados_detalle_json = json.dumps(afiliados_detalle)

            with self.engine.begin() as conn:
                guardar_asistencia_stmt = text("""
                    CALL sp_guardar_asistencia(:id_asistencia, :asamblea, :fecha, :descripcion, :afiliados_detalle);
                """)
                conn.execute(guardar_asistencia_stmt, {
                    'id_asistencia': id_asistencia if id_asistencia else None,
                    'asamblea': asamblea,
                    'fecha': fecha,
                    'descripcion': descripcion,
                    'afiliados_detalle': afiliados_detalle_json
                })

            QMessageBox.information(self, "Éxito", "Se ha guardado o actualizado el registro correctamente.")
            self.close()
            self.menu_registros.mostrar_listarAsistencias()


    def eliminar(self):
        id_str = self.lineEdit.text()
        if id_str.isdigit():
            id_asistencia = int(id_str)
            respuesta = QMessageBox.question(self, "Confirmar Eliminación", "¿Estás seguro de eliminar el registro?", QMessageBox.Yes | QMessageBox.No)
            
            if respuesta == QMessageBox.Yes:
                try:
                    with self.engine.begin() as conn:
                        eliminar_stmt = text("CALL sp_eliminar_asistencias(:id_asistencia)")
                        conn.execute(eliminar_stmt, {'id_asistencia': id_asistencia})
                    QMessageBox.information(self, "Éxito", "Se ha eliminado el registro correctamente.")
                    self.close()
                    self.menu_registros.mostrar_listarAsistencias()

                except Exception as e:
                    QMessageBox.critical(self, "Error", f"Ocurrió un error al eliminar el registro: {e}")
            else:
                QMessageBox.warning(self, "Advertencia", "Operación cancelada.")
        else:
            QMessageBox.warning(self, "Advertencia", "Necesita seleccionar un registro primero.")

    def exportarPdf(self):
        respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar la lista a PDF?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            try:
                results = []
                results2 = []

                for row in range(self.tableWidget.rowCount()):
                    row_data = []
                    for column in range(self.tableWidget.columnCount()):
                        if column == 4: 
                            combo_box = self.tableWidget.cellWidget(row, column)
                            if combo_box:
                                row_data.append(combo_box.currentText()) 
                            else:
                                row_data.append('')
                        elif column == 6:
                            combo_box = self.tableWidget.cellWidget(row, column)
                            if combo_box:
                                row_data.append(combo_box.currentText())
                            else:
                                row_data.append('')
                        else:
                            item = self.tableWidget.item(row, column)
                            if item is not None:
                                row_data.append(item.text())
                            else:
                                row_data.append('')
                    results.append(row_data)

                for row in range(self.tableWidget_2.rowCount()):
                    row_data = []
                    for column in range(self.tableWidget_2.columnCount()):
                        if column == 4:
                            combo_box = self.tableWidget_2.cellWidget(row, column)
                            if combo_box:
                                row_data.append(combo_box.currentText())
                            else:
                                row_data.append('')
                        elif column == 6:
                            combo_box = self.tableWidget_2.cellWidget(row, column)
                            if combo_box:
                                row_data.append(combo_box.currentText())
                            else:
                                row_data.append('')
                        else:
                            item = self.tableWidget_2.item(row, column)
                            if item is not None:
                                row_data.append(item.text())
                            else:
                                row_data.append('')
                    results2.append(row_data)

                ruta_actual = os.path.abspath(os.path.dirname(__file__))
                ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_registro_asistencias.html")

                try:
                    with open(ruta_template, "r") as archivo_html_template:
                        contenido_template = archivo_html_template.read()
                except FileNotFoundError:
                    QMessageBox.critical(self, "Error", "No se pudo encontrar la plantilla HTML.")
                    return

                template = Template(contenido_template)
                html_renderizado = template.render(results=results, results2=results2)

                ruta_resultado = os.path.join(ruta_actual, "..", "utils", "registro_asistencias.html")
                with open(ruta_resultado, "w") as archivo_html_resultado:
                    archivo_html_resultado.write(html_renderizado)

                dialogo = QFileDialog()
                dialogo.setAcceptMode(QFileDialog.AcceptSave)
                dialogo.setNameFilter("Archivos PDF (*.pdf)")
                dialogo.setDefaultSuffix("pdf")

                fecha_actual = datetime.datetime.now().strftime("%d-%m-%Y")
                nombre_archivo = f"Asistencia de la asamblea Afiliados del - {fecha_actual}.pdf"
                dialogo.selectFile(nombre_archivo)

                if dialogo.exec():
                    rutas_seleccionadas = dialogo.selectedFiles()
                    if rutas_seleccionadas:
                        ruta_pdf = rutas_seleccionadas[0]
                        options = {'enable-local-file-access': None}

                        try:
                            pdfkit.from_file(ruta_resultado, ruta_pdf, options=options)
                        except Exception as e:
                            QMessageBox.critical(self, "Error", f"No se pudo generar el PDF: {str(e)}")
                    else:
                        QMessageBox.warning(self, "Advertencia", "No se seleccionó ninguna ruta para guardar el PDF.")
                else:
                    QMessageBox.information(self, "Cancelado", "Operación cancelada por el usuario.")

            except Exception as e:
                QMessageBox.critical(self, "Error", f"Ocurrió un error inesperado: {str(e)}")

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar la ventana de registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()

class RegistrarAsistenciasDirigentes(QMainWindow, Ui_MainWindow_registroAsistenciasDirigentes):
    def __init__(self,menu_registros, engine,data=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.engine = engine
        self.menu_registros = menu_registros

        self.load()
        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionSalir.triggered.connect(self.cerrar)
        self.actionGrabar.triggered.connect(self.grabar)
        self.actionImportar.triggered.connect(self.importar)
        self.actionImprimir.triggered.connect(self.exportarPDF)

        self.actionEliminar.triggered.connect(self.eliminar)

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarAsamblea()

    def eliminar(self):
        id_str = self.lineEdit.text()
        if id_str.isdigit():
            id_asistencia = int(id_str)
            respuesta = QMessageBox.question(self, "Confirmar Eliminación", "¿Estás seguro de eliminar el registro?", QMessageBox.Yes | QMessageBox.No)
            
            if respuesta == QMessageBox.Yes:
                try:
                    with self.engine.begin() as conn:
                        eliminar_stmt = text("CALL sp_eliminar_asistencias(:id_asistencia)")
                        conn.execute(eliminar_stmt, {'id_asistencia': id_asistencia})
                    QMessageBox.information(self, "Éxito", "Se ha eliminado el registro correctamente.")
                    self.close()
                    self.menu_registros.mostrar_listarAsistencias()

                except Exception as e:
                    QMessageBox.critical(self, "Error", f"Ocurrió un error al eliminar el registro: {e}")
            else:
                QMessageBox.warning(self, "Advertencia", "Operación cancelada.")
        else:
            QMessageBox.warning(self, "Advertencia", "Necesita seleccionar un registro primero.")

    def exportarPDF(self):
        respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar la lista a PDF?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            results = []

            for row in range(self.tableWidget.rowCount()):
                row_data = []
                for column in range(self.tableWidget.columnCount()):
                    if self.tableWidget.cellWidget(row, column) is not None:
                        widget = self.tableWidget.cellWidget(row, column)
                        if isinstance(widget, QComboBox):
                            row_data.append(widget.currentText())
                    else:
                        item = self.tableWidget.item(row, column)
                        if item is not None:
                            row_data.append(item.text())
                        else:
                            row_data.append('')
                results.append(row_data)

            ruta_actual = os.path.abspath(os.path.dirname(__file__))
            ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_registro_asistencias_dirigentes.html")

            with open(ruta_template, "r") as archivo_html_template:
                contenido_template = archivo_html_template.read()
            template = Template(contenido_template)

            html_renderizado = template.render(results=results)

            ruta_resultado = os.path.join(ruta_actual, "..", "utils", "registro_asistencias_dirigentes.html")
            with open(ruta_resultado, "w") as archivo_html_resultado:
                archivo_html_resultado.write(html_renderizado)

            dialogo = QFileDialog()
            dialogo.setAcceptMode(QFileDialog.AcceptSave)
            dialogo.setNameFilter("Archivos PDF (*.pdf)")
            dialogo.setDefaultSuffix("pdf")

            fecha_actual = datetime.datetime.now().strftime("%d-%m-%Y")
            nombre_archivo = f"Asistencia de la asamblea Dirigentes del - {fecha_actual}.pdf"
            dialogo.selectFile(nombre_archivo)

            if dialogo.exec():
                rutas_seleccionadas = dialogo.selectedFiles()
                if rutas_seleccionadas:
                    ruta_pdf = rutas_seleccionadas[0]
                    options = {'enable-local-file-access': None}
                    pdfkit.from_file(ruta_resultado, ruta_pdf, options=options)

    def load(self):
        self.tableWidget.setColumnHidden(0, True)
        self.dateEdit.setDate(QDate.currentDate())

    def importar(self):
        self.configurarTabla()
        self.conectarSenales()
        self.tableWidget.resizeColumnsToContents()

    def grabar(self):
        respuesta = QMessageBox.question(self, "Guardar Registro", "¿Desea guardar las asistencias?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            id_asistencia = self.lineEdit.text()

            asamblea = self.comboBox.currentText()
            fecha = self.dateEdit.date().toString("yyyy-MM-dd")
            descripcion = "Asamblea de Dirigentes"

            with self.engine.begin() as conn:
                if id_asistencia:
                    update_asistencia_cab = text("""
                        UPDATE asistencias_cab
                        SET asamblea = :asamblea, fecha = :fecha, descripcion = :descripcion
                        WHERE id = :id_asistencia;
                    """)
                    conn.execute(update_asistencia_cab, {'asamblea': asamblea, 'fecha': fecha, 'descripcion': descripcion, 'id_asistencia': id_asistencia})

                    delete_asistencia_det = text("""
                        DELETE FROM asistencias_det_dirig WHERE id_asistencia_cab = :id_asistencia_cab;
                    """)
                    conn.execute(delete_asistencia_det, {'id_asistencia_cab': id_asistencia})
                
                else:
                    insert_asistencia_cab = text("""
                        INSERT INTO asistencias_cab (asamblea, fecha, descripcion) 
                        VALUES (:asamblea, :fecha, :descripcion);
                    """)
                    result = conn.execute(insert_asistencia_cab, {'asamblea': asamblea, 'fecha': fecha, 'descripcion': descripcion})
                    id_asistencia = result.lastrowid

                for tableWidget in [self.tableWidget]:
                    for row in range(tableWidget.rowCount()):
                        id_dirigente = tableWidget.item(row, 0).text()
                        asistencia = tableWidget.cellWidget(row, 4).currentText()
                        multa = tableWidget.item(row, 5).text()
                        observacion_widget = tableWidget.cellWidget(row, 6)
                        observacion = observacion_widget.currentText() if observacion_widget else "-"

                        datos_asistencia = {
                            'id_asistencia_cab': id_asistencia,
                            'id_dirigente': id_dirigente,
                            'asistencia': asistencia,
                            'multa': multa,
                            'observacion': observacion
                        }

                        insert_asistencia_det = text("""
                            INSERT INTO asistencias_det_dirig (id_asistencia_cab, id_dirigente, asistencia, multa, observacion)
                            VALUES (:id_asistencia_cab, :id_dirigente, :asistencia, :multa, :observacion);
                        """)

                        conn.execute(insert_asistencia_det, datos_asistencia)

            QMessageBox.information(self, "Éxito", "Se ha guardado o actualizado el registro correctamente.")
            self.close()
            self.menu_registros.mostrar_listarAsistencias()

    def configurarTabla(self):
        query = """
        SELECT id, apellido, nombre, dni
        FROM dirigentes 
        WHERE estado = '1'
        ORDER BY id DESC;
        """
        df_dirigentes = pd.read_sql(query, self.engine)

        if not df_dirigentes.empty:
            self.tableWidget.setColumnCount(7)
            self.tableWidget.setRowCount(len(df_dirigentes))
            self.tableWidget.setHorizontalHeaderLabels(['ID', 'Apellido', 'Nombre', 'DNI', 'Asistencia', 'Multa', 'Observación'])

            for row_idx, row in df_dirigentes.iterrows():
                for col_idx, cell_data in enumerate(row):
                    item = QTableWidgetItem(str(cell_data))
                    self.tableWidget.setItem(row_idx, col_idx, item)
                self.agregarComboboxYSpinbox(row_idx)

    def agregarComboboxYSpinbox(self, row_idx):
        items = ["ASISTIO", "FALTA", "JUSTIFICADO"]
        justificacion_items = ["", "VACACIONES", "DESCANSO MÉDICO", "FALLECIMIENTO", "AMANECIDA", "GOSE SIN HABER", "SUSPENSIÓN PERFECTA", "OTROS"]

        combo_asistencia = QComboBox()
        combo_asistencia.addItems(items)
        self.tableWidget.setCellWidget(row_idx, 4, combo_asistencia)

        item_multa = QTableWidgetItem("0")
        self.tableWidget.setItem(row_idx, 5, item_multa)

        combo_observacion = QComboBox()
        combo_observacion.addItems(justificacion_items)
        self.tableWidget.setCellWidget(row_idx, 6, combo_observacion)

    def conectarSenales(self):
        for row in range(self.tableWidget.rowCount()):
            combo_asistencia = self.tableWidget.cellWidget(row, 4)
            combo_asistencia.currentIndexChanged.connect(lambda _, row=row: self.actualizar_por_asistencia(row))

    def actualizar_por_asistencia(self, row_idx):
        combo_asistencia = self.tableWidget.cellWidget(row_idx, 4)
        asistencia = combo_asistencia.currentText()
        multa_valor = "0.00" if asistencia != "FALTA" else "70.00"
        self.tableWidget.item(row_idx, 5).setText(multa_valor)

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar la ventana de registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()

class ProgressDialog(QDialog):
    def __init__(self, maximum, parent=None):
        super().__init__(parent)
        self.setWindowTitle('Progreso')
        self.progressBar = QProgressBar(self)
        self.progressBar.setMaximum(maximum)
        layout = QVBoxLayout(self)
        layout.addWidget(self.progressBar)
        self.setLayout(layout)

    def setValue(self, value):
        self.progressBar.setValue(value)