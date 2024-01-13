from database.connection import *
from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QFileDialog, QSizePolicy, QVBoxLayout
from models.ui_lista_licencias import Ui_MainWindow as Ui_MainWindow_ListaLicencias
from models.ui_registro_licencias import Ui_MainWindow as Ui_MainWindow_RegistroLicencias
from models.ui_buscar_Dirigente import Ui_MainWindow as Ui_MainWindow_buscarDirigente
from PySide6.QtCore import QDate, Qt
from jinja2 import Template
from sqlalchemy import text
import pandas as pd
import datetime
import pdfkit
import os

class ListarLicencias(QMainWindow, Ui_MainWindow_ListaLicencias):
    def __init__(self,menu_registros, engine):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.menu_registros = menu_registros
        self.engine = engine

        self.load()

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionExportar.triggered.connect(self.exportarExcel)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)

        self.lineEdit.textChanged.connect(self.buscar)
        self.tableWidget.itemDoubleClicked.connect(self.enviarSeleccionado)

    def load(self):
        self.tableWidget.setColumnHidden(0, True)
        self.tableWidget.setColumnHidden(2, True)
        self.listar()

    def listar(self):
        query = """
            SELECT l.id, l.fecha, d.id AS id_dirigente, d.nombre, d.apellido, l.tipo, l.motivo, l.estado_asistencia, l.registro, l.estado_canje, l.tadanza, l.monto, l.movilidad
            FROM licencias l
            INNER JOIN dirigentes d ON l.id_dirigente = d.id
            ORDER BY l.id DESC;
        """
        df_licencias = pd.read_sql(query, self.engine)
        
        if not df_licencias.empty:
            num_columns = len(df_licencias.columns)
            self.tableWidget.setColumnCount(num_columns)
            self.tableWidget.setRowCount(len(df_licencias))

            for row_idx, row in df_licencias.iterrows():
                for col_idx, cell_data in enumerate(row):
                    item = QTableWidgetItem(str(cell_data))
                    self.tableWidget.setItem(row_idx, col_idx, item)
                    
                    if col_idx == 1:
                        fecha_str = cell_data.strftime("%d-%m-%Y")
                        item.setText(fecha_str)

                    elif col_idx == 5:
                        if cell_data == "0":
                            item.setText("LIC. ART. 32")
                        else :
                            item.setText("LIC. ART. 17")

                    elif col_idx == 7:
                        if cell_data == "0":
                            item.setText("LIC. NORMAL")
                        elif cell_data == "1":
                            item.setText("LIC. PERSONAL")
                        else :
                            item.setText("LIC. ASISTENCIA")

                    elif col_idx == 8:
                        if cell_data == "0":
                            item.setText("CONTABILIZA")
                        elif cell_data == "1":
                            item.setText("NO CONTABILIZA")
                        else :
                            item.setText("ANULADO")

                    elif col_idx == 9:
                        if cell_data == "0":
                            item.setText("CONFORME")
                        else:
                            item.setText("PAGADO")
                    else:
                        item.setText(str(cell_data))


            self.tableWidget.resizeColumnsToContents()
        else:
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo Registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarLicencias()
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
            ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_lista_licencias.html")

            with open(ruta_template, "r") as archivo_html_template:
                contenido_template = archivo_html_template.read()
            template = Template(contenido_template)

            html_renderizado = template.render(results=results)

            ruta_resultado = os.path.join(ruta_actual, "..", "utils", "listado_licencias.html")
            with open(ruta_resultado, "w") as archivo_html_resultado:
                archivo_html_resultado.write(html_renderizado)

            dialogo = QFileDialog()
            dialogo.setAcceptMode(QFileDialog.AcceptSave)
            dialogo.setNameFilter("Archivos PDF (*.pdf)")
            dialogo.setDefaultSuffix("pdf")

            fecha_actual = datetime.datetime.now().strftime("%d-%m-%Y")
            nombre_archivo = f"Lista de Licencias - {fecha_actual}.pdf"
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
            nombre = self.tableWidget.item(fila, 3) 
            apellido = self.tableWidget.item(fila, 4) 
            tipo_licencia = self.tableWidget.item(fila, 5) 
            motivo_licencia = self.tableWidget.item(fila, 6) 
            estado_asistencia = self.tableWidget.item(fila, 7) 
            registro = self.tableWidget.item(fila, 8) 
            estado_lic_canje = self.tableWidget.item(fila, 9) 
            if nombre is not None and apellido is not None and tipo_licencia is not None and motivo_licencia is not None and estado_asistencia is not None and registro is not None and estado_lic_canje is not None:
                no = nombre.text().lower()
                ap = apellido.text().lower()
                tl = tipo_licencia.text().lower()
                mt = motivo_licencia.text().lower()
                ea = estado_asistencia.text().lower()
                re = registro.text().lower()
                es = estado_lic_canje.text().lower()
                if texto.lower() in no.lower() or texto.lower() in ap or texto.lower() in tl or texto.lower() in mt or texto.lower() in ea or texto.lower() in re or texto.lower() in es:
                    self.tableWidget.setRowHidden(fila, False)
                else:
                    self.tableWidget.setRowHidden(fila, True)

    def enviarSeleccionado(self, item):
        row = item.row()
        data = []
        for col in range(self.tableWidget.columnCount()):
            data.append(self.tableWidget.item(row, col).text())

        self.registrar = RegistrarLicencias(self.menu_registros, self.engine, data)

        self.registrar.lineEdit.setText(data[0])
        fecha_formateada = data[1].split()[0] 
        self.registrar.dateEdit.setDate(QDate.fromString(fecha_formateada, "dd-MM-yyyy"))
        self.registrar.lineEdit_2.setText(data[2])
        self.registrar.lineEdit_3.setText(data[3]+ " " + data[4])
        if data[5] == "LIC. ART. 32":
            self.registrar.comboBox.setCurrentIndex(0)
        elif data[5] == "LIC. ART. 17":
            self.registrar.comboBox.setCurrentIndex(1)
        self.registrar.lineEdit_4.setText(data[6])
        if data[7] == "LIC. NORMAL":
            self.registrar.comboBox_2.setCurrentIndex(0)
        elif data[7] == "LIC. PERSONAL":
            self.registrar.comboBox_2.setCurrentIndex(1)
        elif data[7] == "LIC. ASISTENCIA":
            self.registrar.comboBox_2.setCurrentIndex(2)
        if data[8] == "CONTABILIZA":
            self.registrar.comboBox_3.setCurrentIndex(0)
        elif data[8] == "NO CONTABILIZA":
            self.registrar.comboBox_3.setCurrentIndex(1)
        elif data[8] == "ANULADO":
            self.registrar.comboBox_3.setCurrentIndex(2)
        if data[9] == "CONFORME":
            self.registrar.comboBox_4.setCurrentIndex(0)
        elif data[9] == "PAGADO":
            self.registrar.comboBox_4.setCurrentIndex(1)

        self.registrar.doubleSpinBox.setValue(float(data[10]))
        self.registrar.doubleSpinBox_2.setValue(float(data[11]))
        self.registrar.doubleSpinBox_3.setValue(float(data[12]))

        self.menu_registros.layout.addWidget(self.registrar)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

        self.registrar.dateEdit.setFocus()

        self.close()

class RegistrarLicencias(QMainWindow, Ui_MainWindow_RegistroLicencias):
    def __init__(self,menu_registros, engine=None,data=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)
        
        self.menu_registros = menu_registros
        self.engine = engine

        self.load()

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionGrabar.triggered.connect(self.grabar)
        self.actionEliminar.triggered.connect(self.eliminar)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)

        self.pushButton.clicked.connect(self.show_popup)

    def load(self):
        self.dateEdit.setDate(QDate.currentDate())
        self.dateEdit.setFocus()

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarLicencias()
        else:
            pass 

    def grabar(self):
        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea grabar un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            id = self.lineEdit.text()
            id_dirigente = self.lineEdit_2.text()
            fecha = self.dateEdit.date().toString("yyyy-MM-dd")
            if self.comboBox.currentIndex() == 0:
                tipo_lic = "0"
            elif self.comboBox.currentIndex() == 1:
                tipo_lic = "1"
            motivo = self.lineEdit_4.text()
            if self.comboBox_2.currentIndex() == 0:
                estado_lic = "0"
            elif self.comboBox_2.currentIndex() == 1:
                estado_lic = "1"           
            else :
                estado_lic = "2"
            if self.comboBox_3.currentIndex() == 0:
                registro = "0"
            elif self.comboBox_3.currentIndex() == 1:
                registro = "1"           
            else :
                registro = "2"
            if self.comboBox_4.currentIndex() == 0:
                estado = "0"
            elif self.comboBox_4.currentIndex() == 1:
                estado = "1"           
            else :
                estado = "2"
            tardanza = self.doubleSpinBox.value()
            monto_pago = self.doubleSpinBox_2.value()
            movilidad = self.doubleSpinBox_3.value()

            id = int(id) if id.isdigit() else None

            if id_dirigente and motivo:

                datos_licencias = {
                    'id': id,
                    'fecha':fecha,
                    'id_dirigente':id_dirigente,
                    'tipo':tipo_lic,
                    'motivo':motivo,
                    'estado_asistencia':estado_lic,
                    'registro':registro,
                    'estado_canje':estado,
                    'tadanza':tardanza,
                    'monto':monto_pago,
                    'movilidad':movilidad,
                }

                with self.engine.begin() as conn:
                    if id:
                        update_stmt = text("""
                            UPDATE licencias 
                            SET fecha=:fecha,id_dirigente=:id_dirigente,tipo=:tipo,motivo=:motivo,estado_asistencia=:estado_asistencia,registro=:registro,estado_canje=:estado_canje,tadanza=:tadanza,monto=:monto,movilidad=:movilidad
                            WHERE id=:id;
                        """)
                        conn.execute(update_stmt, datos_licencias)

                        QMessageBox.information(self, "Éxito", "Se ha editado el dirigente correctamente.")
                        self.close()
                    else:
                        insert_stmt = text("""
                            INSERT INTO licencias (fecha,id_dirigente,tipo,motivo,estado_asistencia,registro,estado_canje,tadanza,monto,movilidad)
                            VALUES (:fecha,:id_dirigente,:tipo,:motivo,:estado_asistencia,:registro,:estado_canje,:tadanza,:monto,:movilidad)
                        """)
                        conn.execute(insert_stmt, datos_licencias)
                        QMessageBox.information(self, "Éxito", "Se ha guardado el dirigente correctamente.")
                        self.close()
            else:
                QMessageBox.warning(self, "Advertencia", "Los campos que contienen un (*) son obligatorios.")

        else:
            pass 

    def exportarPdf(self):

            if not self.lineEdit.text():
                QMessageBox.warning(self, "Alerta", "Necesita seleccionar un registro primero")
            else:
                respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar el registro seleccionado a PDF?", QMessageBox.Yes | QMessageBox.No)

                if respuesta == QMessageBox.Yes:
                    nombre = self.lineEdit_3.text() #
                    fecha = self.dateEdit.date().toString("dd-MM-yyyy")
                    tipo_lic = self.comboBox.currentText()
                    motivo = self.lineEdit_4.text() #
                    estado_lic = self.comboBox_2.currentText()
                    registro = self.comboBox_3.currentText()
                    estado = self.comboBox_4.currentText()
                    tardanza = self.doubleSpinBox.value()
                    monto = self.doubleSpinBox_2.value()
                    movilidad = self.doubleSpinBox_3.value()

                    ruta_actual = os.path.abspath(os.path.dirname(__file__))
                    ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_registro_licencias.html")
                    with open(ruta_template, "r") as archivo_html_template:
                        contenido_template = archivo_html_template.read()
                    template = Template(contenido_template)

                    html_renderizado = template.render(nombre=nombre, fecha=fecha, tipo_lic=tipo_lic, motivo=motivo,
                                                    estado_lic=estado_lic, registro=registro,
                                                    estado=estado,tardanza=tardanza,
                                                    monto=monto, movilidad=movilidad)

                    ruta_resultado = os.path.join(ruta_actual, "..", "utils", "registro_licencias.html")
                    with open(ruta_resultado, "w") as archivo_html_resultado:
                        archivo_html_resultado.write(html_renderizado)

                    dialogo = QFileDialog()
                    dialogo.setAcceptMode(QFileDialog.AcceptSave)
                    dialogo.setNameFilter("Archivos PDF (*.pdf)")
                    dialogo.setDefaultSuffix("pdf")

                    nombre_archivo = f"Licencia de - {nombre} el {fecha}.pdf"
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
                with self.engine.begin() as conn:
                    delete_licencias_query = text("DELETE FROM licencias WHERE id = :id")
                    conn.execute(delete_licencias_query, {'id': id})
                    QMessageBox.information(self, "Éxito", "Se ha eliminado el registro correctamente.")
                    self.close()
                    self.menu_registros.mostrar_listarLicencias()
            else:
                QMessageBox.warning(self, "Advertencia", "Operación cancelada.")
        else:
            QMessageBox.warning(self, "Advertencia", "Necesita seleccionar un registro primero.")

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar la ventana de registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
        else:
            pass 

    def show_popup(self):

        self.registrar = BuscarDirigente(self.menu_registros, self.engine)
        self.menu_registros.layout.addWidget(self.registrar)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

        self.close()


class BuscarDirigente(QMainWindow, Ui_MainWindow_buscarDirigente):
    def __init__(self,menu_registros, engine=None,data=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.engine = engine
        self.menu_registros = menu_registros

        self.load()

        self.lineEdit.textChanged.connect(self.buscar)
        self.tableWidget.itemDoubleClicked.connect(self.enviarSeleccionado)
        self.actionSalir.triggered.connect(self.cerrar)

    def load(self):
        self.listar()

    def listar(self):
        dirigentes = buscar_Dirigente()

        if dirigentes is not None:
            self.tableWidget.setRowCount(len(dirigentes))
            self.tableWidget.setColumnCount(len(dirigentes[0]))
            self.tableWidget.setHorizontalHeaderLabels([])

            for row_idx, row_data in enumerate(dirigentes):
                for col_idx, cell_data in enumerate(row_data):
                    item = QTableWidgetItem(str(cell_data))
                    self.tableWidget.setItem(row_idx, col_idx, item)


            self.tableWidget.resizeColumnsToContents()
        else:
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")

    def buscar(self,texto):
        num_filas = self.tableWidget.rowCount()

        for fila in range(num_filas):
            nombree = self.tableWidget.item(fila, 1)
            apellido = self.tableWidget.item(fila, 2)

            if nombree is not None and apellido is not None:
                dirigente = nombree.text()
                concepto = apellido.text().lower()

                if texto.lower() in dirigente.lower() or texto.lower() in concepto:
                    self.tableWidget.setRowHidden(fila, False)
                else:
                    self.tableWidget.setRowHidden(fila, True)

    def enviarSeleccionado(self,item):
        row = item.row()
        data = []
        for col in range(self.tableWidget.columnCount()):
            data.append(self.tableWidget.item(row, col).text())

        self.registrar = RegistrarLicencias(self.menu_registros, self.engine, data)
        self.registrar.lineEdit_2.setText(data[0])
        self.registrar.lineEdit_3.setText(data[1]+ " "+ data[2])
        self.registrar.dateEdit.setFocus()
        
        self.menu_registros.layout.addWidget(self.registrar)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

        self.close()

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar el listado actual?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
        else:
            pass