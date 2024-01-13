from models.ui_registro_afiliados import Ui_MainWindow as Ui_MainWindow_RegistroAfiliados
from models.ui_lista_afiliados import Ui_MainWindow as Ui_MainWindow_ListaAfiliados
from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QSizePolicy, QFileDialog
from PySide6.QtCore import QDate, Qt
from datetime import datetime
from jinja2 import Template
from sqlalchemy import text
import pandas as pd
import datetime
import pdfkit
import os


class ListarAfiliados(QMainWindow, Ui_MainWindow_ListaAfiliados):
    def __init__(self, menu_registros, engine):
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
        self.tableWidget.cellDoubleClicked.connect(self.enviarSeleccionado)

    def load(self):
        self.tableWidget.setColumnHidden(0, True)
        self.tableWidget.setColumnHidden(7, True)
        self.tableWidget.setColumnHidden(8, True)
        self.tableWidget.setColumnHidden(9, True)
        self.listar()

    def listar(self):
        query = """
        SELECT id, nombre, apellido, lugarVivienda, dni, fechaNacimiento, celular,nombreBancario, numeroBancario, CCIBancario, puestoTrabajo, zonaLaboral,fechaIngresoKMMP, fechaIngresoSindical, estado 
        FROM afiliados 
        ORDER BY apellido ASC;
        """
        df_afiliados = pd.read_sql(query, self.engine)

        if not df_afiliados.empty:
            num_columns = len(df_afiliados.columns)
            self.tableWidget.setColumnCount(num_columns)

            self.tableWidget.setRowCount(len(df_afiliados))

            for row_idx, row in df_afiliados.iterrows():
                for col_idx, cell_data in enumerate(row):
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

            dialogo = QFileDialog()
            dialogo.setAcceptMode(QFileDialog.AcceptSave)
            dialogo.setNameFilter("Archivos PDF (*.pdf)")
            dialogo.setDefaultSuffix("pdf")

            fecha_actual = datetime.datetime.now().strftime("%d-%m-%Y")
            nombre_archivo = f"Lista de afiliados - {fecha_actual}.pdf"
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

        self.registrar_afiliados = RegistrarAfiliados(self.menu_registros, self.engine, data)

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

        id_afiliado = data[0]

        query = "SELECT * FROM escolaridades WHERE id_afiliado = %s;"
        df_escolaridad = pd.read_sql(query, self.engine, params=(id_afiliado,))
        
        if not df_escolaridad.empty:
            self.registrar_afiliados.spinBox_2.setValue(df_escolaridad.iloc[0]['nacido'])
            self.registrar_afiliados.spinBox_3.setValue(df_escolaridad.iloc[0]['inicial'])
            self.registrar_afiliados.spinBox_4.setValue(df_escolaridad.iloc[0]['primaria'])
            self.registrar_afiliados.spinBox_5.setValue(df_escolaridad.iloc[0]['secundaria'])
            self.registrar_afiliados.spinBox_6.setValue(df_escolaridad.iloc[0]['superior'])

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
            estado = self.comboBox.currentText()

            nacido = int(self.spinBox_2.value())
            inicial = int(self.spinBox_3.value())
            primaria = int(self.spinBox_4.value())
            secundaria = int(self.spinBox_5.value())
            superior = int(self.spinBox_6.value())
            
            id = int(id) if id.isdigit() else None

            if nombre and apellido and dni:
                datos_afiliado = {
                    'id': id,  
                    'nombre': nombre,
                    'apellido': apellido,
                    'lugarVivienda': lugar_vivienda, 
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

                datos_escolaridad = {
                    'id_afiliado': id,
                    'nacido': nacido,
                    'inicial': inicial,
                    'primaria': primaria,
                    'secundaria': secundaria,
                    'superior': superior
                }

                with self.engine.begin() as conn:
                    if id:
                        update_stmt = text("""
                            UPDATE afiliados
                            SET nombre=:nombre, apellido=:apellido, lugarVivienda=:lugarVivienda,
                                dni=:dni, fechaNacimiento=:fechaNacimiento, celular=:celular,
                                nombreBancario=:nombreBancario, numeroBancario=:numeroBancario,
                                CCIBancario=:CCIBancario, puestoTrabajo=:puestoTrabajo,
                                zonaLaboral=:zonaLaboral, fechaIngresoKMMP=:fechaIngresoKMMP,
                                fechaIngresoSindical=:fechaIngresoSindical, estado=:estado
                            WHERE id=:id
                        """)
                        conn.execute(update_stmt, datos_afiliado)

                        update_escolaridad_stmt = text("""
                            UPDATE escolaridades
                            SET nacido=:nacido, inicial=:inicial, primaria=:primaria, 
                                secundaria=:secundaria, superior=:superior
                            WHERE id_afiliado=:id_afiliado
                        """)
                        conn.execute(update_escolaridad_stmt, datos_escolaridad)
                    else:
                        insert_stmt = text("""
                            INSERT INTO afiliados (nombre, apellido, lugarVivienda, dni, fechaNacimiento, celular,
                                nombreBancario, numeroBancario, CCIBancario, puestoTrabajo,
                                zonaLaboral, fechaIngresoKMMP, fechaIngresoSindical, estado)
                            VALUES (:nombre, :apellido, :lugarVivienda, :dni, :fechaNacimiento, :celular,
                                :nombreBancario, :numeroBancario, :CCIBancario, :puestoTrabajo,
                                :zonaLaboral, :fechaIngresoKMMP, :fechaIngresoSindical, :estado)
                        """)
                        conn.execute(insert_stmt, datos_afiliado)
                        
                        ultimo_id_stmt = text("""
                            SELECT id FROM afiliados ORDER BY id DESC LIMIT 1
                        """)
                        result = conn.execute(ultimo_id_stmt)
                        ultimo_id = result.fetchone()[0]

                        insert_escolaridad_stmt = text("""
                            INSERT INTO escolaridades (id_afiliado, nacido, inicial, primaria, secundaria, superior)
                            VALUES (:ultimo_id, :nacido, :inicial, :primaria, :secundaria, :superior)
                        """)

                        datos_escolaridad['ultimo_id'] = ultimo_id
                        conn.execute(insert_escolaridad_stmt, datos_escolaridad)

                QMessageBox.information(self, "Éxito", "Registro actualizado o guardado correctamente.")
                self.close()
                self.menu_registros.mostrar_listarAfiliados()
            else:
                QMessageBox.warning(self, "Advertencia", "Los campos marcados con (*) son obligatorios.")

        else:
            pass


    def eliminar(self):
        id_str = self.lineEdit.text()
        if id_str.isdigit():
            id = int(id_str)
            respuesta = QMessageBox.question(self, "Confirmar deshabilitacion", "¿Estás seguro de deshabilitar el registro?", QMessageBox.Yes | QMessageBox.No)

            if respuesta == QMessageBox.Yes:
                with self.engine.begin() as conn:
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
                    estado = "DESAFILIADO"
            
                    id = int(id) if id.isdigit() else None

                    if nombre and apellido and dni:
                        datos_afiliado = {
                            'id': id,  
                            'nombre': nombre,
                            'apellido': apellido,
                            'lugarVivienda': lugar_vivienda, 
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

                        update_stmt = text("""
                            UPDATE afiliados
                            SET nombre=:nombre, apellido=:apellido, lugarVivienda=:lugarVivienda,
                                dni=:dni, fechaNacimiento=:fechaNacimiento, celular=:celular,
                                nombreBancario=:nombreBancario, numeroBancario=:numeroBancario,
                                CCIBancario=:CCIBancario, puestoTrabajo=:puestoTrabajo,
                                zonaLaboral=:zonaLaboral, fechaIngresoKMMP=:fechaIngresoKMMP,
                                fechaIngresoSindical=:fechaIngresoSindical, estado=:estado
                            WHERE id=:id
                        """)
                        conn.execute(update_stmt, datos_afiliado)

                QMessageBox.information(self, "Éxito", "Se ha deshabilitado el registro correctamente.")
                self.close()
                self.menu_registros.mostrar_listarAfiliados()
            else:
                QMessageBox.warning(self, "Advertencia", "Operación cancelada.")
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
