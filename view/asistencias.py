from database.connection import *
from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QFileDialog, QComboBox, QProgressBar, QApplication, QVBoxLayout, QDialog, QWidget, QSizePolicy
from models.ui_lista_asistencias import Ui_MainWindow as Ui_MainWindow_ListaAsistencias
from models.ui_registro_asistencias import Ui_MainWindow as Ui_MainWindow_RegistroAsistencias
from sqlalchemy import create_engine, update, Table, MetaData
from PySide6.QtCore import Qt, QDate
from tkinter import Tk, filedialog
from functools import partial
from jinja2 import Template
import pandas as pd
import datetime
import pdfkit
import json

class ListarAsistencias(QMainWindow, Ui_MainWindow_ListaAsistencias):
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
        self.listar()

    def listar(self):
        sp = "sp_listarAsistencias()"
        asistencias = Listar(sp)

        if len(asistencias) > 0:
            num_columns = len(asistencias[0])
            self.tableWidget.setColumnCount(num_columns)

            self.tableWidget.setRowCount(len(asistencias))
            for row_idx, row_data in enumerate(asistencias):
                for col_idx, cell_data in enumerate(row_data):
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
        else:
            pass 

    def exportarExcel(self):
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
            item_nombre = self.tableWidget.item(fila, 2)
            item_apellido = self.tableWidget.item(fila, 3)
            item_asamblea = self.tableWidget.item(fila, 4)

            if item_asamblea is not None and item_nombre is not None and item_apellido is not None:
                asamblea = item_asamblea.text()
                nombre = item_nombre.text().lower()
                apellido = item_apellido.text().lower()

                if texto.lower() in asamblea.lower() or texto.lower() in nombre or texto.lower() in apellido:
                    self.tableWidget.setRowHidden(fila, False)
                else:
                    self.tableWidget.setRowHidden(fila, True)

    def enviarSeleccionado(self):
        row = self.tableWidget.currentRow()
        id = self.tableWidget.item(row, 0).text()
        asistencias = obtener_asistencias_cab(id)
        
        self.registrar = RegistrarAsitencias(self.menu_registros, asistencias)

        self.registrar.lineEdit.setText(self.tableWidget.item(row, 0).text())
        self.registrar.comboBox.setCurrentText(self.tableWidget.item(row, 1).text())
        fecha = QDate.fromString(self.tableWidget.item(row, 2).text(), "dd-MM-yyyy")
        self.registrar.dateEdit.setDate(fecha)
        
        for asistencia in asistencias:
            if asistencia[4] == 'ASISTIO':
                tableWidget = self.registrar.tableWidget
            else:
                tableWidget = self.registrar.tableWidget_2
            
            row_position = tableWidget.rowCount()
            tableWidget.insertRow(row_position)
            
            for i, item in enumerate(asistencia):
                tableWidget.setItem(row_position, i, QTableWidgetItem(str(item)))
                
                if i == 4:
                    comboAsistencias = QComboBox()
                    comboAsistencias.addItems(["ASISTIO", "FALTA", "JUSTIFICADO"])
                    comboAsistencias.setCurrentText(item)
                    tableWidget.setCellWidget(row_position, i, comboAsistencias)

                elif i == 6:
                    comboJustificaciones = QComboBox()
                    comboJustificaciones.addItems(["", "VACACIONES", "DESCANSO MÉDICO", "FALLECIMIENTO", "AMANECIDA", "GOSE SIN HABER", "SUSPENSIÓN PERFECTA", "OTROS"])
                    comboJustificaciones.setCurrentText(item)
                    tableWidget.setCellWidget(row_position, i, comboJustificaciones)

        self.registrar.comboBox.currentIndexChanged.connect(self.registrar.actualizar_por_tipo_reunion)
        afiliado_col = 4
        items = ["ASISTIO", "FALTA", "JUSTIFICADO"]
        justificacion_items = ["","VACACIONES", "DESCANSO MÉDICO", "FALLECIMIENTO", "AMANECIDA", "GOSE SIN HABER", "SUSPENSIÓN PERFECTA", "OTROS"]

        for row in range(self.registrar.tableWidget.rowCount()):
            comboAsistencias = QComboBox()
            comboAsistencias.addItems(items)
            comboAsistencias.setCurrentIndex(0)
            comboAsistencias.currentIndexChanged.connect(partial(self.registrar.actualizar_por_asistencia, self.registrar.tableWidget, row))
            self.registrar.tableWidget.setCellWidget(row, afiliado_col, comboAsistencias)

            comboJustificaciones = QComboBox()
            comboJustificaciones.addItems(justificacion_items)
            self.registrar.tableWidget.setCellWidget(row, 6, comboJustificaciones)
            
            comboAsistencias.currentIndexChanged.connect(partial(self.toggle_justificacion, comboJustificaciones, comboAsistencias))

        for row in range(self.registrar.tableWidget_2.rowCount()):
            comboAsistencias = QComboBox()
            comboAsistencias.addItems(items)
            contenido = self.registrar.tableWidget_2.item(row, 4).text()
            if contenido == "FALTA":
                comboAsistencias.setCurrentIndex(1)
            if contenido == "JUSTIFICADO":
                comboAsistencias.setCurrentIndex(2)
                comboJustificaciones = QComboBox()
                comboJustificaciones.addItems(justificacion_items)
                justificacion = self.registrar.tableWidget_2.item(row, 6).text()
                if justificacion == "VACACIONES":
                    comboJustificaciones.setCurrentIndex(1)
                elif justificacion == "DESCANSO MÉDICO":
                    comboJustificaciones.setCurrentIndex(2)
                elif justificacion == "FALLECIMIENTO":
                    comboJustificaciones.setCurrentIndex(3)
                elif justificacion == "AMANECIDA":
                    comboJustificaciones.setCurrentIndex(4)
                elif justificacion == "GOSE SIN HABER":
                    comboJustificaciones.setCurrentIndex(5)
                elif justificacion == "SUSPENSIÓN PERFECTA":
                    comboJustificaciones.setCurrentIndex(6)
                else : 
                    comboJustificaciones.setCurrentIndex(7)

                self.registrar.tableWidget_2.setCellWidget(row, 6, comboJustificaciones)
                
                comboAsistencias.currentIndexChanged.connect(partial(self.toggle_justificacion, comboJustificaciones, comboAsistencias))

            comboAsistencias.currentIndexChanged.connect(partial(self.registrar.actualizar_por_asistencia, self.registrar.tableWidget_2, row))
            self.registrar.tableWidget_2.setCellWidget(row, afiliado_col, comboAsistencias)
                    



        self.close()
        self.registrar.tableWidget.resizeColumnsToContents()
        self.registrar.tableWidget_2.resizeColumnsToContents()

        self.menu_registros.layout.addWidget(self.registrar)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        
        self.registrar.spinBox.setValue(self.registrar.tableWidget.rowCount())
        self.registrar.spinBox_2.setValue(self.registrar.tableWidget_2.rowCount())

    def toggle_justificacion(self, comboJustificaciones, comboAsistencias, currentIndex=None):
        if comboAsistencias.currentText() == "JUSTIFICADO":
            pass
        else :
            comboJustificaciones.setCurrentIndex(0)



class RegistrarAsitencias(QMainWindow, Ui_MainWindow_RegistroAsistencias):
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
        self.actionImportar.triggered.connect(self.ImportarExcel)

        self.lineEdit_3.textChanged.connect(self.filtrar_Asistencias)
        self.lineEdit_4.textChanged.connect(self.filtrar_noAsistencias)

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

    def ImportarExcel(self):
        self.comboBox.currentIndexChanged.connect(self.actualizar_por_tipo_reunion)
        afiliado_col = 4
        items = ["ASISTIO", "FALTA", "JUSTIFICADO"]
        justificacion_items = ["","VACACIONES", "DESCANSO MÉDICO", "FALLECIMIENTO", "AMANECIDA", "GOSE SIN HABER", "SUSPENSIÓN PERFECTA", "OTROS"]

        root = Tk()
        root.withdraw()
        file_path = filedialog.askopenfilename(filetypes=[("Archivos Excel", "*.xlsx *.xls")])
        if not file_path:
            print("No se seleccionó ningún archivo.")
            return
        try:
            df = pd.read_excel(file_path, usecols=["Ingresar su DNI"])
        except Exception as e:
            print("Error al leer el archivo:", e)
            return
        dnis = df["Ingresar su DNI"].tolist()

        afiliados = obtener_afiliados()

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
            self.menu_registros.mostrar_listarAsistencias()
        else:
            pass 

    def grabar(self):
        respuesta = QMessageBox.question(self, "Guardar Registro", "¿Desea guardar las asistencias?", QMessageBox.Yes | QMessageBox.No)

        asamblea = self.comboBox.currentText()

        fecha_qdate = self.dateEdit.date()
        fecha = fecha_qdate.toString("yyyy-MM-dd")
        duplicado = ExisteRegistroAsambleaFecha(asamblea, fecha)

        if duplicado == 0:
            if respuesta == QMessageBox.Yes:
                self.lineEdit_4.text == ""
                self.lineEdit_3.text == ""
                
                asamblea = self.comboBox.currentText()
                fecha = self.dateEdit.date().toString("yyyy-MM-dd")

                total_rows = self.tableWidget.rowCount() + self.tableWidget_2.rowCount()
                progressDialog = ProgressDialog(maximum=total_rows, parent=self)
                progressDialog.show()

                columns = ['id_asistencia_cab', 'id_afiliado', 'asistencia', 'multa', 'observacion']
                df = pd.DataFrame(columns=columns)

                id_edit = self.lineEdit.text()
                if id_edit:
                    actualizar_asistencia_cab(id_edit, asamblea, fecha)
                    eliminar_detalle(id_edit)
                    for tableWidget in [self.tableWidget, self.tableWidget_2]:
                        for row in range(tableWidget.rowCount()):
                            id_afiliado = tableWidget.item(row, 0).text()
                            asistencia = tableWidget.cellWidget(row, 4).currentText()
                            multa = tableWidget.item(row, 5).text()
                            observacion_widget = tableWidget.cellWidget(row, 6)
                            observacion = observacion_widget.currentText() if observacion_widget else "-"
                            df.loc[len(df.index)] = [id_edit, id_afiliado, asistencia, multa, observacion]
                            progressDialog.setValue(progressDialog.progressBar.value() + 1)
                            QApplication.processEvents()
                else:
                    id_asistencia_cab = guardar_asistencia_cab(asamblea, fecha)
                    for tableWidget in [self.tableWidget, self.tableWidget_2]:
                        for row in range(tableWidget.rowCount()):
                            id_afiliado = tableWidget.item(row, 0).text()
                            asistencia = tableWidget.cellWidget(row, 4).currentText()
                            multa = tableWidget.item(row, 5).text()
                            observacion_widget = tableWidget.cellWidget(row, 6)
                            observacion = observacion_widget.currentText() if observacion_widget else "-"
                            df.loc[len(df.index)] = [id_asistencia_cab, id_afiliado, asistencia, multa, observacion]
                            progressDialog.setValue(progressDialog.progressBar.value() + 1)
                            QApplication.processEvents()
                progressDialog.close()

                with open('config.json', 'r') as f:
                    config = json.load(f)

                engine = create_engine(f"mysql+pymysql://{config['usuario']}:{config['password']}@{config['host']}:{config['port']}/{config['db']}")

                df.to_sql('asistencias_det', con=engine, index=False, if_exists='append')

                self.close()
                self.menu_registros.mostrar_listarAsistencias()

            else:
                pass
                
        else:
            QMessageBox.information(self, "Alerta", "No se puede guardar asistencias duplicadas.")

    def actualizar_registro(self, id_asistencia_cab, id_afiliado, asistencia, multa, observacion):
        with open('config.json', 'r') as f:
            config = json.load(f)

        engine = create_engine(f"mysql+pymysql://{config['usuario']}:{config['password']}@{config['host']}:{config['port']}/{config['db']}")

        meta = MetaData()
        asistencias_det = Table('asistencias_det', meta, autoload_with=engine)

        stmt = (
            update(asistencias_det).
            where(asistencias_det.c.id_asistencia_cab == id_asistencia_cab).
            where(asistencias_det.c.id_afiliado == id_afiliado).
            values(asistencia=asistencia, multa=multa, observacion=observacion)
        )
        with engine.connect() as conn:
            conn.execute(stmt)

    def eliminar(self):
        id = int(self.lineEdit.text()) 

        if id:
            respuesta = QMessageBox.question(self, "Confirmar Eliminación", "¿Estás seguro de eliminar el registro?", QMessageBox.Yes | QMessageBox.No)
                        
            if respuesta == QMessageBox.Yes:
                sp = "sp_eliminarAsistencias"
                Eliminar(sp,id)
                QMessageBox.information(self, "Éxito", "Se ha eliminado el registro correctamente.")
                self.close()

                self.menu_registros.mostrar_listarAsistencias()
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