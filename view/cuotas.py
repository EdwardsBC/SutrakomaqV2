from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QFileDialog, QWidget, QSizePolicy, QVBoxLayout
from models.ui_registro_cuotas import Ui_MainWindow as Ui_MainWindow_RegistroCuotas 
from models.ui_lista_cuotas import Ui_MainWindow as Ui_MainWindow_ListaCuotas
from view.variables_globales import GlobalVar
from PySide6.QtCore import Qt, QDate
from datetime import datetime
from jinja2 import Template
from sqlalchemy import text
from decimal import Decimal
import pandas as pd
import json
import pdfkit
import os

class ListarCuotas(QMainWindow, Ui_MainWindow_ListaCuotas):
    def __init__(self, menu_contabilidad, engine):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)
        self.menu_contabilidad = menu_contabilidad
        self.engine = engine
        self.load()
        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)

        self.dateEdit.dateChanged.connect(self.buscar)
        self.dateEdit_2.dateChanged.connect(self.buscar)
        self.tableWidget.itemDoubleClicked.connect(self.enviarSeleccionado)


    def load(self):
        self.tableWidget.setColumnHidden(0, True)
        date = QDate.fromString("01/01/2000", "dd/MM/yyyy")
        self.dateEdit.setDate(date)
        self.dateEdit_2.setDate(QDate.currentDate())
        self.listar()
        self.tableWidget.resizeColumnsToContents()

    def buscar(self):
        fecha_inicio = self.dateEdit.date().toString("yyyy-MM-dd")
        fecha_fin = self.dateEdit_2.date().toString("yyyy-MM-dd")
        self.listar(fecha_inicio, fecha_fin)



    def listar(self, fecha_inicio=None, fecha_fin=None):
        if fecha_inicio is None:
            fecha_inicio = self.dateEdit.date().toString("yyyy-MM-dd")
        if fecha_fin is None:
            fecha_fin = self.dateEdit_2.date().toString("yyyy-MM-dd")
        
        query = f"""
            SELECT id, fecha, cuota, total
            FROM cuota_cab
            WHERE fecha BETWEEN '{fecha_inicio}' AND '{fecha_fin}'
            ORDER BY id DESC;
        """
        df_dirigentes = pd.read_sql(query, self.engine)

        if not df_dirigentes.empty:
            num_columns = len(df_dirigentes.columns)
            self.tableWidget.setColumnCount(num_columns)
            self.tableWidget.setRowCount(len(df_dirigentes))

            for row_idx, row in df_dirigentes.iterrows():
                for col_idx, cell_data in enumerate(row):
                    if col_idx == 1:
                        try:
                            formatted_date = pd.to_datetime(cell_data).strftime("%d/%m/%Y")
                            item = QTableWidgetItem(formatted_date)
                        except Exception:
                            item = QTableWidgetItem(str(cell_data))
                    else:
                        item = QTableWidgetItem(str(cell_data))

                    self.tableWidget.setItem(row_idx, col_idx, item)

            self.tableWidget.resizeColumnsToContents()
        else:
            self.tableWidget.clearContents()
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")
            


    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo Registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_contabilidad.mostrar_registroCuotas()

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

            fecha_actual = datetime.now().strftime("%d-%m-%Y")
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
            
    def enviarSeleccionado(self):
        row = self.tableWidget.currentRow()
        id = self.tableWidget.item(row, 0).text()

        query = f"""
            SELECT cd.id_afiliado, a.apellido, a.nombre, a.dni, cd.cuota
            FROM cuota_det cd
            INNER JOIN afiliados a on cd.id_afiliado = a.id
            WHERE cd.id_cuota_cab = {id}
            ORDER BY cd.id ASC;
        """

        data = pd.read_sql(query, self.engine)

        fecha_texto = self.tableWidget.item(row, 1).text()
        try:
            fecha_formateada = datetime.strptime(fecha_texto, "%d/%m/%Y").strftime("%Y-%m-%d")
        except ValueError as e:
            QMessageBox.critical(self, "Error de Fecha", f"Error al formatear la fecha: {str(e)}")
            return

        datos_ingreso = {
            'fecha': fecha_formateada,
            'concepto': "CUOTA ORDINARIA",
            'tipo': "INGRESO",
            'cantidad': float(self.tableWidget.item(row, 3).text()),
            'origen': "CAJA PIURA"
        }

        with self.engine.begin() as conn:
            id_ingreso_existente = self.buscar_ingreso_egreso_existente(conn, datos_ingreso)

            id_caja = self.buscar_caja(conn, id)

        self.registrar_cuotas = RegistrarCuotas(
            self.menu_contabilidad, self.engine, data,
            id_ingreso_egreso=id_ingreso_existente,
            id_caja=id_caja
        )

        self.registrar_cuotas.lineEdit.setText(id)

        fecha = QDate.fromString(fecha_texto, "dd/MM/yyyy")
        self.registrar_cuotas.dateEdit.setDate(fecha)

        valor_spin_box = float(self.tableWidget.item(row, 2).text())
        self.registrar_cuotas.doubleSpinBox_3.setValue(valor_spin_box)

        valor_spin_box = float(self.tableWidget.item(row, 3).text())
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

    def buscar_ingreso_egreso_existente(self, conn, datos_ingresos_egresos):
        """
        Busca el ID del registro de ingresos_egresos basado en los datos proporcionados.
        """
        buscar_ingreso_egreso_stmt = text("""
            SELECT id
            FROM ingresos_egresos
            WHERE fecha = :fecha
            AND concepto = :concepto
            AND tipo = :tipo
            AND cantidad = :cantidad
            AND origen = :origen
            LIMIT 1;
        """)
        result = conn.execute(buscar_ingreso_egreso_stmt, datos_ingresos_egresos).fetchone()
        return result[0] if result else None

    def buscar_caja(self, conn, id_origen):
        """
        Busca el ID de la caja correspondiente al id_origen y sección 'CUOTAS'.
        """
        buscar_caja_stmt = text("""
            SELECT id
            FROM caja
            WHERE id_origen = :id_origen
            AND section = 'CUOTAS'
            LIMIT 1;
        """)
        result = conn.execute(buscar_caja_stmt, {'id_origen': id_origen}).fetchone()
        return result[0] if result else None


class RegistrarCuotas(QMainWindow, Ui_MainWindow_RegistroCuotas):
    def __init__(self, menu_contabilidad, engine=None, data=None, id_ingreso_egreso=None, id_caja=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)
        self.engine = engine
        self.menu_contabilidad = menu_contabilidad
        self.load()
        self.global_var = GlobalVar()
        self.id_ingreso_egreso = id_ingreso_egreso
        self.id_caja = id_caja

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionGrabar.triggered.connect(self.grabar)
        self.actionEliminar.triggered.connect(self.eliminar)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)
        self.actionImportar.triggered.connect(self.importarAfiliados)
        self.doubleSpinBox_3.valueChanged.connect(self.actualizarCuotas)
        self.tableWidget.cellChanged.connect(self.actualizarTotal)

    def grabar(self):
        """
        Graba o actualiza un registro de cuota, ingreso y caja.
        """
        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea grabar un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            if self.doubleSpinBox.value() >= 1:
                id_cab = self.lineEdit.text()
                fecha = self.dateEdit.date().toString("yyyy-MM-dd")
                cuota_cab = self.doubleSpinBox_3.value()
                total = Decimal(self.doubleSpinBox.value())
                id_cab = int(id_cab) if id_cab.isdigit() else None

                detalles_cuotas = [
                    {'id_afiliado': self.tableWidget.item(row, 0).text(), 'cuota': self.tableWidget.item(row, 4).text()}
                    for row in range(self.tableWidget.rowCount())
                ]
                detalles_cuotas_json = json.dumps(detalles_cuotas)

                with self.engine.begin() as conn:
                    self.guardar_cuota(conn, id_cab, fecha, cuota_cab, total, detalles_cuotas_json)
                    self.grabar_ingresos_egresos(conn, self.id_ingreso_egreso, tipo="INGRESO")
                    id_origen = self.obtener_ultimo_id_cuota_cab(conn)
                    self.guardar_o_actualizar_caja(conn, float(total), fecha, self.id_caja, id_origen)

                QMessageBox.information(self, "Éxito", "Se ha guardado o actualizado el registro correctamente.")
                self.close()
            else:
                QMessageBox.information(self, "Advertencia", "Se tiene que importar los afiliados")

    def obtener_ultimo_id_cuota_cab(self, conn):
        """
        Obtiene el último id de la tabla cuota_cab.
        """
        query = text("SELECT COALESCE(MAX(id), 0) FROM cuota_cab")
        result = conn.execute(query).fetchone()
        return result[0]

    def guardar_cuota(self, conn, id_cab, fecha, cuota_cab, total, detalles_cuotas_json):
        """
        Guarda o actualiza los registros de cuota_cab y cuota_det.
        """
        guardar_cuota_stmt = text("""
            CALL sp_guardar_cuota(:id_cab, :fecha, :cuota_cab, :total, :detalles_cuotas);
        """)
        conn.execute(guardar_cuota_stmt, {
            'id_cab': id_cab if id_cab else None,
            'fecha': fecha,
            'cuota_cab': cuota_cab,
            'total': float(total),
            'detalles_cuotas': detalles_cuotas_json
        })

    def grabar_ingresos_egresos(self, conn, id_ingreso_egreso, tipo="EGRESO"):
        """
        Graba o actualiza los registros de ingresos y egresos.
        """
        datos_ingresos_egresos = self.obtener_datos_ingresos_egresos(tipo)

        if id_ingreso_egreso:
            actualizar_ingreso_egreso_stmt = text("""
                UPDATE ingresos_egresos
                SET fecha = :fecha, concepto = :concepto, tipo = :tipo, 
                    cantidad = :cantidad, origen = :origen
                WHERE id = :id_ingreso_egreso;
            """)
            datos_ingresos_egresos['id_ingreso_egreso'] = id_ingreso_egreso
            conn.execute(actualizar_ingreso_egreso_stmt, datos_ingresos_egresos)
        else:
            grabar_ingreso_egreso_stmt = text("""
                INSERT INTO ingresos_egresos (fecha, concepto, tipo, cantidad, origen)
                VALUES (:fecha, :concepto, :tipo, :cantidad, :origen);
            """)
            conn.execute(grabar_ingreso_egreso_stmt, datos_ingresos_egresos)

    def guardar_o_actualizar_caja(self, conn, cajaPiura, fecha, id_caja, id_origen):
        """
        Guarda o actualiza los registros de caja.
        """
        if id_caja:
            actualizar_caja_stmt = text("""
                UPDATE caja
                SET cajaChica = 0, cajaPiura = :cajaPiura, fecha = :fecha, 
                    id_secretaria = :id_secretaria, secretaria = :secretaria, tipo = :tipo, section = :section
                WHERE id = :id_caja;
            """)
            conn.execute(actualizar_caja_stmt, {
                'cajaPiura': cajaPiura,
                'fecha': fecha,
                'id_secretaria': self.global_var.id_secretaria,
                'secretaria': self.global_var.secretaria,
                'tipo': "INGRESO",
                'section': "CUOTAS",
                'id_caja': id_caja
            })
        else:
            self.guardar_caja(conn, cajaChica=0, cajaPiura=cajaPiura, fecha=fecha,
                            id_secretaria=self.global_var.id_secretaria, secretaria=self.global_var.secretaria,
                            tipo="INGRESO", id_origen=id_origen, section="CUOTAS")


    def guardar_caja(self, conn, cajaChica, cajaPiura, fecha, id_secretaria, secretaria, tipo, id_origen, section):
        """
        Guarda los datos en la tabla de caja.
        """
        sp_insertar_caja = text("""
            CALL sp_insertar_caja(:cajaChica, :cajaPiura, :fecha, :id_secretaria, :secretaria, :tipo, :id_origen, :section)
        """)
        conn.execute(sp_insertar_caja, {
            'cajaChica': cajaChica,
            'cajaPiura': cajaPiura,
            'fecha': fecha,
            'id_secretaria': id_secretaria,
            'secretaria': secretaria,
            'tipo': tipo,
            'id_origen': id_origen,
            'section': section
        })

    def obtener_datos_ingresos_egresos(self, tipo):
        """
        Obtiene los datos del ingreso/egreso para registrar en la base de datos.
        """
        fecha = self.dateEdit.date().toString("yyyy-MM-dd")
        concepto = "CUOTA ORDINARIA"
        cantidad = float(self.doubleSpinBox.value())
        origen = "CAJA PIURA"

        return {
            'fecha': fecha,
            'concepto': concepto,
            'tipo': tipo,
            'cantidad': cantidad,
            'origen': origen,
        }

    def eliminar(self):
        """
        Elimina los registros de cuota, ingresos_egresos y caja basados en el ID proporcionado.
        """
        id_str = self.lineEdit.text()

        if id_str.isdigit():
            id = int(id_str)
            respuesta = QMessageBox.question(self, "Confirmar Eliminación", "¿Estás seguro de eliminar el registro?", QMessageBox.Yes | QMessageBox.No)
            if respuesta == QMessageBox.Yes:
                try:
                    with self.engine.begin() as conn:
                        conn.execute(text("DELETE FROM cuota_cab WHERE id = :id"), {'id': id})
                        conn.execute(text("DELETE FROM cuota_det WHERE id_cuota_cab = :id"), {'id': id})
                        conn.execute(text("DELETE FROM ingresos_egresos WHERE id = :id_ingreso"), {'id_ingreso': self.id_ingreso_egreso})
                        conn.execute(text("DELETE FROM caja WHERE id = :id_caja"), {'id_caja': self.id_caja})

                    QMessageBox.information(self, "Éxito", "Se ha eliminado el registro de la cuota, ingreso y registro en caja correctamente.")
                    self.close()

                except Exception as e:
                    QMessageBox.critical(self, "Error", f"Error al eliminar el registro: {str(e)}")
            else:
                QMessageBox.warning(self, "Advertencia", "Operación cancelada.")
        else:
            QMessageBox.warning(self, "Advertencia", "Necesita seleccionar un registro primero.")


    def importarAfiliados(self):
        try:
            query = """
                SELECT id, apellido, nombre, dni, estado 
                FROM afiliados
                WHERE estado = "AFILIADO"
                ORDER BY apellido ASC
            """
            df_afiliados = pd.read_sql(query, self.engine)

            if not df_afiliados.empty:
                self.tableWidget.setRowCount(len(df_afiliados))
                self.tableWidget.setColumnCount(5)

                for row_idx, row in df_afiliados.iterrows():
                    for col_idx in range(4):
                        item = QTableWidgetItem(str(row.iloc[col_idx]))
                        self.tableWidget.setItem(row_idx, col_idx, item)
                    cuota_item = QTableWidgetItem(str(self.doubleSpinBox_3.value()))
                    self.tableWidget.setItem(row_idx, 4, cuota_item)

                self.actualizarTotal()
                self.tableWidget.resizeColumnsToContents()
            else:
                QMessageBox.information(self, "Información", "No se encontraron afiliados activos para importar.")
        
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Error al importar los afiliados: {str(e)}")

    def actualizarCuotas(self):
        for row in range(self.tableWidget.rowCount()):
            cuota_item = QTableWidgetItem(str(self.doubleSpinBox_3.value()))
            self.tableWidget.setItem(row, 4, cuota_item)
        self.actualizarTotal()

    def actualizarTotal(self):
        total = 0
        for row in range(self.tableWidget.rowCount()):
            try:
                valor = float(self.tableWidget.item(row, 4).text())
                total += valor
            except (ValueError, AttributeError):
                continue

        self.doubleSpinBox.setValue(total)

    def load(self):
        self.tableWidget.setColumnHidden(0, True)
        self.dateEdit.setDate(QDate.currentDate())
        self.tableWidget.resizeColumnsToContents()

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_contabilidad.mostrar_registroCuotas()

    def exportarPdf(self):
        if not self.lineEdit.text():
            QMessageBox.warning(self, "Alerta", "Necesita seleccionar un registro primero")
        else:
            respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar el registro seleccionado a PDF?", QMessageBox.Yes | QMessageBox.No)
            if respuesta == QMessageBox.Yes:
                id = self.lineEdit.text()
                fecha = self.dateEdit.date().toString("dd-MM-yyyy")
                cuota = self.doubleSpinBox_3.value()
                total = self.doubleSpinBox.value()
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
                ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_registro_cuotas.html")
                with open(ruta_template, "r") as archivo_html_template:
                    contenido_template = archivo_html_template.read()
                template = Template(contenido_template)

                html_renderizado = template.render(id=id, fecha=fecha, cuota=cuota, total=total, results=results)

                ruta_resultado = os.path.join(ruta_actual, "..", "utils", "registro_licencias.html")
                with open(ruta_resultado, "w") as archivo_html_resultado:
                    archivo_html_resultado.write(html_renderizado)

                dialogo = QFileDialog()
                dialogo.setAcceptMode(QFileDialog.AcceptSave)
                dialogo.setNameFilter("Archivos PDF (*.pdf)")
                dialogo.setDefaultSuffix("pdf")

                nombre_archivo = f"Cuota N°- {id} del {fecha}.pdf"
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