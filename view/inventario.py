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
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)

        self.lineEdit.textChanged.connect(self.buscar)
        self.tableWidget.itemDoubleClicked.connect(self.enviarSeleccionado)

    def load(self):
        self.listar()
        self.tableWidget.setColumnHidden(0, True)

    def listar(self):
        query = "CALL sp_listar_inventarios()"
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

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar el listado actual?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()

    def buscar(self, texto):
        num_filas = self.tableWidget.rowCount()
        for fila in range(num_filas):
            codigo = self.tableWidget.item(fila, 1) 
            descripcion = self.tableWidget.item(fila,2)
            marca = self.tableWidget.item(fila, 9) 
            if codigo is not None and descripcion is not None and marca is not None:
                code = codigo.text().lower()
                desc = descripcion.text().lower()
                marc = marca.text().lower()
                if texto.lower() in code.lower() or texto.lower() in desc or texto.lower() in marc:
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

class RegistrarInventarios(QMainWindow, Ui_MainWindow_Registroinventarios):
    def __init__(self,menu_registros, engine=None,data=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.engine = engine
        self.menu_registros = menu_registros

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionGrabar.triggered.connect(self.grabar)
        self.actionEliminar.triggered.connect(self.eliminar)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarInventario()

    def obtener_datos(self):
        """Función para centralizar la obtención de los datos del inventario desde los widgets."""
        id = self.lineEdit.text().upper()
        codigo = self.lineEdit_2.text().upper()
        descripcion = self.lineEdit_3.text().upper()
        unidadMedida = self.lineEdit_4.text().upper()
        medidas = self.lineEdit_5.text().upper()
        ubicacion = self.lineEdit_6.text().upper()
        conteo = self.lineEdit_7.text().upper()
        color = self.lineEdit_8.text().upper()
        estado = self.lineEdit_9.text().upper()
        marca = self.lineEdit_10.text().upper()
        modelo = self.lineEdit_11.text().upper()
        serie = self.lineEdit_12.text().upper()
        observacion = self.lineEdit_13.text().upper()

        id = int(id) if id.isdigit() else None

        return {
            'id': id,
            'codigo': codigo,
            'descripcion': descripcion,
            'unidadMedida': unidadMedida,
            'medidas': medidas,
            'ubicacion': ubicacion,
            'conteo': conteo,
            'color': color,
            'estado': estado,
            'marca': marca,
            'modelo': modelo,
            'serie': serie,
            'observacion': observacion
        }

    def grabar(self):
        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea grabar un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            datos_inventario = self.obtener_datos()

            if datos_inventario['codigo'] and datos_inventario['descripcion']:
                with self.engine.begin() as conn:
                    grabar_inventario_stmt = text("""
                        CALL sp_insertar_actualizar_inventario(:id, :codigo, :descripcion, :unidadMedida, :medidas, :ubicacion, 
                                                            :conteo, :color, :estado, :marca, :modelo, :serie, :observacion);
                    """)
                    conn.execute(grabar_inventario_stmt, datos_inventario)

                    if datos_inventario['id']:
                        QMessageBox.information(self, "Éxito", "Se ha editado el registro con éxito.")
                    else:
                        QMessageBox.information(self, "Éxito", "Se ha guardado el registro con éxito.")

                self.close()
                self.menu_registros.mostrar_listarInventario()
            else:
                QMessageBox.warning(self, "Advertencia", "Los campos que contienen un (*) son obligatorios.")


    def eliminar(self):
        id_str = self.lineEdit.text()
        if id_str.isdigit():
            id = int(id_str)
            respuesta = QMessageBox.question(self, "Confirmar Eliminación", "¿Estás seguro de eliminar el registro?", QMessageBox.Yes | QMessageBox.No)
            if respuesta == QMessageBox.Yes:
                with self.engine.begin() as conn:
                    delete_inventarios_query = text("CALL sp_eliminar_inventario(:id);")
                    conn.execute(delete_inventarios_query, {'id': id})
                    QMessageBox.information(self, "Éxito", "Se ha eliminado el registro correctamente.")
                    self.close()
            else:
                QMessageBox.warning(self, "Advertencia", "Operación cancelada.")
        else:
            QMessageBox.warning(self, "Advertencia", "Necesita seleccionar un registro primero.")

    def exportarPdf(self):
        if not self.lineEdit.text():
            QMessageBox.warning(self, "Alerta", "Necesita seleccionar un artículo")
        else:
            respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar el artículo a PDF?", QMessageBox.Yes | QMessageBox.No)
            if respuesta == QMessageBox.Yes:
                datos_inventario = self.obtener_datos()

                ruta_actual = os.path.abspath(os.path.dirname(__file__))
                ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_registro_inventarios.html")

                with open(ruta_template, "r") as archivo_html_template:
                    contenido_template = archivo_html_template.read()
                template = Template(contenido_template)

                html_renderizado = template.render(
                    codigo=datos_inventario['codigo'], 
                    descripcion=datos_inventario['descripcion'], 
                    unidadMedida=datos_inventario['unidadMedida'],
                    medidas=datos_inventario['medidas'], 
                    ubicacion=datos_inventario['ubicacion'],
                    conteo=datos_inventario['conteo'], 
                    color=datos_inventario['color'],
                    estado=datos_inventario['estado'], 
                    marca=datos_inventario['marca'], 
                    modelo=datos_inventario['modelo'], 
                    serie=datos_inventario['serie'], 
                    observacion=datos_inventario['observacion']
                )

                ruta_resultado = os.path.join(ruta_actual, "..", "utils", "registro_inventarios.html")
                with open(ruta_resultado, "w") as archivo_html_resultado:
                    archivo_html_resultado.write(html_renderizado)

                dialogo = QFileDialog()
                dialogo.setAcceptMode(QFileDialog.AcceptSave)
                dialogo.setNameFilter("Archivos PDF (*.pdf)")
                dialogo.setDefaultSuffix("pdf")

                nombre_archivo = f"Articulo - {datos_inventario['codigo']} {datos_inventario['descripcion']}.pdf"
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