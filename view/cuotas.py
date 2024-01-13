from models.ui_buscar_Afiliado import Ui_MainWindow as Ui_MainWindow_buscarAfiliado
from models.ui_registro_cuotas import Ui_MainWindow as Ui_MainWindow_RegistroCuotas
from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QFileDialog, QWidget, QSizePolicy, QVBoxLayout
from models.ui_lista_cuotas import Ui_MainWindow as Ui_MainWindow_ListaCuotas
from database.connection import *
from PySide6.QtCore import Qt, QDate
from jinja2 import Template
from tkinter import Tk, filedialog
import datetime
import pdfkit
import os

from sqlalchemy import text
import pandas as pd


class ListarCuotas(QMainWindow, Ui_MainWindow_ListaCuotas):
    def __init__(self,menu_contabilidad, engine):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.menu_contabilidad = menu_contabilidad
        self.engine = engine

        self.load()

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionExportar.triggered.connect(self.exportarExcel)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)

        self.lineEdit.textChanged.connect(self.buscar)
        self.tableWidget.itemDoubleClicked.connect(self.enviarSeleccionado)

    def load(self):
        self.listar()

    def listar(self):
        query = """
            SELECT id, fecha, cuota, multa, total
            FROM cuota_cab
            ORDER BY fecha DESC;
        """
        df_dirigentes = pd.read_sql(query, self.engine)

        if not df_dirigentes.empty:
            num_columns = len(df_dirigentes.columns)
            self.tableWidget.setColumnCount(num_columns)
            self.tableWidget.setRowCount(len(df_dirigentes))

            for row_idx, row in df_dirigentes.iterrows():
                for col_idx, cell_data in enumerate(row):
                    item = QTableWidgetItem(str(cell_data))
                    self.tableWidget.setItem(row_idx, col_idx, item)

            self.tableWidget.resizeColumnsToContents()
        else:
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo Registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_contabilidad.mostrar_registroCuotas()
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
            ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_lista_cuotas.html")

            with open(ruta_template, "r") as archivo_html_template:
                contenido_template = archivo_html_template.read()
            template = Template(contenido_template)

            html_renderizado = template.render(results=results)

            ruta_resultado = os.path.join(ruta_actual, "..", "utils", "listado_cuotas.html")
            with open(ruta_resultado, "w") as archivo_html_resultado:
                archivo_html_resultado.write(html_renderizado)

            dialogo = QFileDialog()
            dialogo.setAcceptMode(QFileDialog.AcceptSave)
            dialogo.setNameFilter("Archivos PDF (*.pdf)")
            dialogo.setDefaultSuffix("pdf")

            fecha_actual = datetime.datetime.now().strftime("%d-%m-%Y")
            nombre_archivo = f"Lista de Cuotas - {fecha_actual}.pdf"
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
            nombre = self.tableWidget.item(fila, 0) 
            apell = self.tableWidget.item(fila, 1) 
            if nombre is not None and apell is not None:
                nom = nombre.text().lower()
                ape = apell.text().lower()
                if texto.lower() in nom.lower() or texto.lower() in ape:
                    self.tableWidget.setRowHidden(fila, False)
                else:
                    self.tableWidget.setRowHidden(fila, True)

    def enviarSeleccionado(self):
        row = self.tableWidget.currentRow()
        id = self.tableWidget.item(row, 0).text()

        query = f"""
            SELECT cd.id_afiliado, a.apellido, a.nombre, a.dni, a.dni, cd.cuota, cd.multa, cd.total
            FROM cuota_det cd
            INNER JOIN afiliados a on cd.id_afiliado = a.id
            WHERE cd.id_cuota_cab = {id}
            ORDER BY cd.id ASC;
        """

        data = pd.read_sql(query, self.engine)

        self.registrar_cuotas = RegistrarCuotas(self.menu_contabilidad, self.engine, data)

        id = self.tableWidget.item(row,0).text()
        self.registrar_cuotas.lineEdit.setText(id)

        fecha = QDate.fromString(self.tableWidget.item(row, 1).text(), "yyyy-MM-dd")
        self.registrar_cuotas.dateEdit.setDate(fecha)

        valor_spin_box = float(self.tableWidget.item(row, 2).text())
        self.registrar_cuotas.doubleSpinBox_3.setValue(valor_spin_box)

        valor_spin_box = float(self.tableWidget.item(row, 3).text())
        self.registrar_cuotas.doubleSpinBox_2.setValue(valor_spin_box)

        valor_spin_box = float(self.tableWidget.item(row, 4).text())
        self.registrar_cuotas.doubleSpinBox.setValue(valor_spin_box)

        for i, row_data in data.iterrows():
            row_position = self.registrar_cuotas.tableWidget.rowCount()
            self.registrar_cuotas.tableWidget.insertRow(row_position)
            for j, value in enumerate(row_data):
                self.registrar_cuotas.tableWidget.setItem(row_position, j, QTableWidgetItem(str(value)))

        self.close()
        self.registrar_cuotas.tableWidget.resizeColumnsToContents()

        self.menu_contabilidad.layout.addWidget(self.registrar_cuotas)
        self.registrar_cuotas.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

class RegistrarCuotas(QMainWindow, Ui_MainWindow_RegistroCuotas):
    def __init__(self,menu_contabilidad, engine=None,data=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.engine = engine
        self.menu_contabilidad = menu_contabilidad

        self.load()

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionGrabar.triggered.connect(self.grabar)
        self.actionEliminar.triggered.connect(self.eliminar)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)
        self.actionImportar.triggered.connect(self.importarExcel)

        self.lineEdit_3.textChanged.connect(self.buscarAfiliado)


    def importarExcel(self):
        root = Tk()
        root.withdraw()
        file_path = filedialog.askopenfilename(filetypes=[("Archivos Excel", "*.xlsx *.xls")])
        if not file_path:
            return

        df = pd.read_excel(file_path, header=2, usecols=[1, 5, 4, 3])
        df.columns = ["cuc", "total", "multa", "cuota"]
        df['cuc'] = df['cuc'].astype(str).str[2:-2]
        df.loc[df['cuc'].str.startswith('0'), 'cuc'] = df['cuc'].str.lstrip('0')
        cuc = df["cuc"].tolist()
        cuota = df["cuota"].tolist()
        multa = df["multa"].tolist()
        total = df["total"].tolist()

        cuotas_data = {
            'CUC': cuc,
            'CUOTA': cuota,
            'MULTA': multa,
            'TOTAL': total
        }
        cuotas_df = pd.DataFrame(cuotas_data)
        cuotas_df = cuotas_df.drop(cuotas_df.tail(2).index)
        
        afiliados = obtener_afiliados()

        afiliados_list = []
        for afiliado in afiliados:
            afiliado_dict = {
                'ID': afiliado[0],
                'APELLIDO': afiliado[1],
                'NOMBRE': afiliado[2],
                'DNI': afiliado[3]
            }
            afiliados_list.append(afiliado_dict)

        afiliados_columns = ['ID', 'APELLIDO', 'NOMBRE', 'DNI']
        afiliados_df = pd.DataFrame(afiliados_list, columns=afiliados_columns)

        Principal_df = pd.merge(afiliados_df, cuotas_df, left_on='DNI', right_on='CUC', how='inner')

        Principal_df = Principal_df[['ID', 'APELLIDO', 'NOMBRE', 'DNI', 'CUC', 'CUOTA', 'MULTA', 'TOTAL']]

        self.tableWidget.setRowCount(len(Principal_df))
        self.tableWidget.setColumnCount(len(Principal_df.columns))

        for i, row in enumerate(Principal_df.values):
            for j, value in enumerate(row):
                item = QTableWidgetItem(str(value))
                self.tableWidget.setItem(i, j, item)

        self.tableWidget.resizeColumnsToContents()

        suma_cuota = Principal_df['CUOTA'].sum()
        suma_multa = Principal_df['MULTA'].sum()
        suma_total = Principal_df['TOTAL'].sum()

        self.doublespinbox_3.setValue(suma_cuota)
        self.doublespinbox_2.setValue(suma_multa)
        self.doublespinbox.setValue(suma_total)

    def buscarAfiliado(self):
        num_filas = self.tableWidget.rowCount()
        texto = self.lineEdit_3.text()
        for fila in range(num_filas):
            item_nombre = self.tableWidget.item(fila, 2)
            item_apellido = self.tableWidget.item(fila, 1)
            item_dni = self.tableWidget.item(fila, 3)

            if item_dni is not None and item_nombre is not None and item_apellido is not None:
                asamblea = item_dni.text()
                nombre = item_nombre.text().lower()
                apellido = item_apellido.text().lower()

                if texto.lower() in asamblea.lower() or texto.lower() in nombre or texto.lower() in apellido:
                    self.tableWidget.setRowHidden(fila, False)
                else:
                    self.tableWidget.setRowHidden(fila, True)

    def load(self):
        self.tableWidget.setColumnHidden(0, True)
        self.tableWidget.setColumnHidden(4, True)

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_contabilidad.mostrar_registroCuotas()
        else:
            pass 

    def grabar(self):
        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea grabar un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            id = self.lineEdit.text()
            fecha = self.dateEdit.date().toString("yyyy-MM-dd")
            cuota = self.doubleSpinBox_3.value()
            multa = self.doubleSpinBox_2.value()
            total = self.doubleSpinBox.value()
            id = int(id) if id.isdigit() else None

            datos_cuotas = {
                'id': id,  
                'fecha':fecha,
                'cuota':cuota,
                'multa':multa,
                'total':total
            }
            with self.engine.begin() as conn:
                if id:
                    update_stmt = text("""
                        UPDATE cuota_cab 
                        SET fecha=:fecha,cuota=:cuota,multa=:multa,total=:total
                        WHERE id=:id;
                    """)
                    conn.execute(update_stmt, datos_cuotas)
                    id_cuota = id
                    delete_cuota_det = text("""
                        DELETE FROM cuota_det WHERE id_cuota_cab = :id_cuota_cab;
                    """)
                    conn.execute(delete_cuota_det, {'id_cuota_cab': id_cuota})
                else:
                    insert_stmt = text("""
                        INSERT INTO cuota_cab (fecha,cuota,multa,total)
                        VALUES (:fecha,:cuota,:multa,:total)
                    """)
                    result = conn.execute(insert_stmt, datos_cuotas)
                    id_cuota = result.lastrowid

                for row in range(self.tableWidget.rowCount()):
                    id_afiliado = self.tableWidget.item(row, 0).text()
                    cuota = self.tableWidget.item(row, 5).text()
                    multa = self.tableWidget.item(row, 6).text()
                    total = self.tableWidget.item(row, 7).text()

                    datos_cuota = {
                        'id_cuota_cab': id_cuota,
                        'id_afiliado': id_afiliado,
                        'cuota': cuota,
                        'multa': multa,
                        'total': total
                    }
                    insert_cuota_det = text("""
                        INSERT INTO cuota_det (id_cuota_cab, id_afiliado, cuota, multa, total)
                        VALUES (:id_cuota_cab, :id_afiliado, :cuota, :multa, :total);
                    """)

                    conn.execute(insert_cuota_det, datos_cuota)

                QMessageBox.information(self, "Éxito", "Se ha guardado o actualizado el registro correctamente.")
                self.close()
        else:
            pass 

    def eliminar(self):
        id_str = self.lineEdit.text()

        if id_str.isdigit():
            id = int(id_str)
            respuesta = QMessageBox.question(self, "Confirmar Eliminación", "¿Estás seguro de eliminar el registro?", QMessageBox.Yes | QMessageBox.No)
            if respuesta == QMessageBox.Yes:
                with self.engine.begin() as conn:
                    delete_cuotas_query = text("DELETE FROM cuota_cab WHERE id = :id")
                    conn.execute(delete_cuotas_query, {'id': id})

                    delete_cuotas_det_query = text("DELETE FROM cuota_det WHERE id_cuota_cab = :id")
                    conn.execute(delete_cuotas_det_query, {'id': id})

                    QMessageBox.information(self, "Éxito", "Se ha eliminado el registro correctamente.")
                    self.close()
            else:
                QMessageBox.warning(self, "Advertencia", "Operación cancelada.")
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

