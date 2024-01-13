from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QSizePolicy, QFileDialog
from models.ui_registro_inventarios import Ui_MainWindow as Ui_MainWindow_Registroinventarios
from models.ui_lista_inventarios import Ui_MainWindow as Ui_MainWindow_Listainventarios
from PySide6.QtGui import QIntValidator
from PySide6.QtCore import QDate, Qt
from datetime import date, timedelta
from jinja2 import Template
from sqlalchemy import text
import pandas as pd
import datetime
import pdfkit
import os

class ListarInventarios(QMainWindow, Ui_MainWindow_Listainventarios):
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
        self.listar()

    def listar(self):
        query = """
        SELECT id,codigo,descripcion,unidadMedida,medidas,ubicacion,conteo,color,estado,marca,modelo,serie,observacion 
        FROM inventarios 
        ORDER BY id DESC;
        """
        df_inventarios = pd.read_sql(query, self.engine)
        
        if not df_inventarios.empty:
            num_columns = len(df_inventarios.columns)
            self.tableWidget.setColumnCount(num_columns)
            self.tableWidget.setRowCount(len(df_inventarios))

            for row_idx, row in df_inventarios.iterrows():
                for col_idx, cell_data in enumerate(row):
                    item = QTableWidgetItem(str(cell_data))
                    self.tableWidget.setItem(row_idx, col_idx, item)
                    item.setText(str(cell_data))

            self.tableWidget.resizeColumnsToContents()
        else:
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo Registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarInventario()
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
            ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_lista_inventarios.html")

            with open(ruta_template, "r") as archivo_html_template:
                contenido_template = archivo_html_template.read()
            template = Template(contenido_template)

            html_renderizado = template.render(results=results)

            ruta_resultado = os.path.join(ruta_actual, "..", "utils", "listado_inventarios.html")
            with open(ruta_resultado, "w") as archivo_html_resultado:
                archivo_html_resultado.write(html_renderizado)

            dialogo = QFileDialog()
            dialogo.setAcceptMode(QFileDialog.AcceptSave)
            dialogo.setNameFilter("Archivos PDF (*.pdf)")
            dialogo.setDefaultSuffix("pdf")

            fecha_actual = datetime.datetime.now().strftime("%d-%m-%Y")
            nombre_archivo = f"Lista de Inventario - {fecha_actual}.pdf"
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
            articulo = self.tableWidget.item(fila, 1) 
            tipo = self.tableWidget.item(fila, 4) 
            if articulo is not None and tipo is not None:
                ne = articulo.text().lower()
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

        self.registrar = RegistrarInventarios(self.menu_registros, self.engine, data)
        self.registrar.lineEdit.setText(data[0])
        self.registrar.lineEdit_2.setText(data[1])
        self.registrar.lineEdit_3.setText(data[2])
        self.registrar.lineEdit_4.setText(data[3])
        self.registrar.lineEdit_5.setText(data[4])
        self.registrar.lineEdit_6.setText(data[5])
        self.registrar.lineEdit_7.setText(data[6])
        self.registrar.lineEdit_8.setText(data[7])
        self.registrar.lineEdit_9.setText(data[8])
        self.registrar.lineEdit_10.setText(data[9])
        self.registrar.lineEdit_11.setText(data[10])
        self.registrar.lineEdit_12.setText(data[11])
        self.registrar.lineEdit_13.setText(data[12])

        self.menu_registros.layout.addWidget(self.registrar)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

        self.close()

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar el listado actual?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
        else:
            pass 

class RegistrarInventarios(QMainWindow, Ui_MainWindow_Registroinventarios):
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

    def load(self):
        pass

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarInventario()
        else:
            pass

    def grabar(self):
        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea grabar un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            id = self.lineEdit.text()
            codigo = self.lineEdit_2.text()
            descripcion = self.lineEdit_3.text()
            unidadMedida = self.lineEdit_4.text()
            medidas = self.lineEdit_5.text()
            ubicacion = self.lineEdit_6.text()
            conteo = self.lineEdit_7.text()
            color = self.lineEdit_8.text()
            estado = self.lineEdit_9.text()
            marca = self.lineEdit_10.text()
            modelo = self.lineEdit_11.text()
            serie = self.lineEdit_12.text()
            observacion = self.lineEdit_13.text()


            id = int(id) if id.isdigit() else None

            if codigo and descripcion:
                datos_inventario = {
                    'id': id,  
                    'codigo':codigo,
                    'descripcion':descripcion,
                    'unidadMedida':unidadMedida,
                    'medidas':medidas,
                    'ubicacion':ubicacion,
                    'conteo':conteo,
                    'color':color,
                    'estado':estado,
                    'marca':marca,
                    'modelo':modelo,
                    'serie':serie,
                    'observacion':observacion,
                }
                with self.engine.begin() as conn:
                    if id:
                        update_stmt = text("""
                            UPDATE inventarios
                            SET codigo=:codigo,descripcion=:descripcion,unidadMedida=:unidadMedida,medidas=:medidas,ubicacion=:ubicacion,conteo=:conteo,color=:color,estado=:estado,marca=:marca,modelo=:modelo,serie=:serie,observacion=:observacion
                            WHERE id=:id;
                        """)

                        conn.execute(update_stmt, datos_inventario)
                        QMessageBox.information(self, "Éxito", "Se ha editado el registro con exito.")
                    else:
                        insert_stmt = text("""
                            INSERT INTO inventarios (codigo,descripcion,unidadMedida,medidas,ubicacion,conteo,color,estado,marca,modelo,serie,observacion)
                            VALUES (:codigo,:descripcion,:unidadMedida,:medidas,:ubicacion,:conteo,:color,:estado,:marca,:modelo,:serie,:observacion)
                        """)
                        conn.execute(insert_stmt, datos_inventario)
            else:
                QMessageBox.warning(self, "Advertencia", "Los campos que contienen un (*) son obligatorios.")
            self.close()
            self.menu_registros.mostrar_listarInventario()
        else:
            pass 

    def exportarPdf(self):
            if not self.lineEdit.text():
                QMessageBox.warning(self, "Alerta", "Necesita seleccionar un articulo")
            else:
                respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar el articulo a PDF?", QMessageBox.Yes | QMessageBox.No)

                if respuesta == QMessageBox.Yes:
                    codigo = self.lineEdit_2.text()
                    descripcion = self.lineEdit_3.text()
                    unidadMedida = self.lineEdit_4.text()
                    medidas = self.lineEdit_5.text()
                    ubicacion = self.lineEdit_6.text()
                    conteo = self.lineEdit_7.text()
                    color = self.lineEdit_8.text()
                    estado = self.lineEdit_9.text()
                    marca = self.lineEdit_10.text()
                    modelo = self.lineEdit_11.text()
                    serie = self.lineEdit_12.text()
                    observacion = self.lineEdit_13.text()

                    ruta_actual = os.path.abspath(os.path.dirname(__file__))
                    ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_registro_inventarios.html")

                    with open(ruta_template, "r") as archivo_html_template:
                        contenido_template = archivo_html_template.read()
                    template = Template(contenido_template)

                    html_renderizado = template.render(codigo=codigo, descripcion=descripcion, unidadMedida=unidadMedida,
                                                    medidas=medidas, ubicacion=ubicacion,
                                                    conteo=conteo, color=color,estado=estado,marca=marca,modelo=modelo,serie=serie,observacion=observacion)

                    ruta_resultado = os.path.join(ruta_actual, "..", "utils", "registro_inventarios.html")
                    with open(ruta_resultado, "w") as archivo_html_resultado:
                        archivo_html_resultado.write(html_renderizado)

                    dialogo = QFileDialog()
                    dialogo.setAcceptMode(QFileDialog.AcceptSave)
                    dialogo.setNameFilter("Archivos PDF (*.pdf)")
                    dialogo.setDefaultSuffix("pdf")

                    nombre_archivo = f"Articulo - {codigo} {descripcion}.pdf"
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
        id_str = self.lineEdit.text()

        if id_str.isdigit():
            id = int(id_str)
            respuesta = QMessageBox.question(self, "Confirmar Eliminación", "¿Estás seguro de eliminar el registro?", QMessageBox.Yes | QMessageBox.No)
            if respuesta == QMessageBox.Yes:
                with self.engine.begin() as conn:
                    delete_inventarios_query = text("DELETE FROM inventarios WHERE id = :id")
                    conn.execute(delete_inventarios_query, {'id': id})
                    QMessageBox.information(self, "Éxito", "Se ha eliminado el registro correctamente.")
                    self.close()
                    self.menu_registros.mostrar_listarInventario()
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