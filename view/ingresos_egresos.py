from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QFileDialog, QWidget, QSizePolicy, QVBoxLayout
from models.ui_lista_ingresos_egresos import Ui_MainWindow as Ui_MainWindow_Listaingresos_egresos
from models.ui_registro_ingresos_egresos import Ui_MainWindow as Ui_MainWindow_Registroingresos_egresos
from models.ui_reabastecer import Ui_MainWindow as Ui_MainWindow_Reabastecer
from view.variables_globales import GlobalVar
from PySide6.QtCore import QDate, Qt
from jinja2 import Template
from sqlalchemy import text
import pandas as pd
from datetime import datetime
import pdfkit
import os

class ListarIngresosEgresos(QMainWindow, Ui_MainWindow_Listaingresos_egresos):
    def __init__(self, menu_contabilidad, engine):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.menu_contabilidad = menu_contabilidad
        self.engine = engine

        self.initComboBoxes()
        self.load()

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)
        self.actionReabastecer.triggered.connect(self.show_popup)

        self.lineEdit.textChanged.connect(self.buscar)
        self.tableWidget.itemDoubleClicked.connect(self.enviarSeleccionado)

        self.comboBox.currentIndexChanged.connect(self.filtrarDatos)
        self.comboBox_2.currentIndexChanged.connect(self.filtrarDatos)

    def initComboBoxes(self):
        self.comboBox.addItem("SIN FILTRO")
        meses = ["ENERO", "FEBRERO", "MARZO", "ABRIL", "MAYO", "JUNIO", "JULIO", "AGOSTO", "SEPTIEMBRE", "OCTUBRE", "NOVIEMBRE", "DICIEMBRE"]
        self.comboBox.addItems(meses)
        self.comboBox_2.addItem("SIN FILTRO")
        anio_actual = datetime.now().year
        for anio in range(2020, anio_actual + 1):
            self.comboBox_2.addItem(str(anio))

    def load(self):
        self.tableWidget.setColumnHidden(0, True)
        self.filtrarDatos()
        self.llenarCajasDatos()

    def listar(self):
        query = "CALL sp_listar_ingresos_egresos()"
        self.df_ingresos_egresos = pd.read_sql(query, self.engine)
        self.df_ingresos_egresos['fecha'] = pd.to_datetime(self.df_ingresos_egresos['fecha'], errors='coerce')
        self.mostrar_datos(self.df_ingresos_egresos)

    def mostrar_datos(self, df):
        self.tableWidget.clearContents()
        self.tableWidget.setRowCount(0)
        if not df.empty:
            num_columns = len(df.columns)
            self.tableWidget.setColumnCount(num_columns)
            self.tableWidget.setRowCount(len(df))
            for row_idx, row in df.iterrows():
                for col_idx, cell_data in enumerate(row):
                    if col_idx == 3:
                        item_text = "INGRESO" if cell_data == "0" else "EGRESO" if cell_data == "1" else str(cell_data)
                    else:
                        item_text = str(cell_data) if not pd.isnull(cell_data) else ""
                    item = QTableWidgetItem(item_text)
                    self.tableWidget.setItem(row_idx, col_idx, item)
            self.tableWidget.resizeColumnsToContents()
        else:
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")

    def filtrarDatos(self):
        mes_seleccionado = self.comboBox.currentIndex()
        anio_seleccionado = self.comboBox_2.currentText()
        mes_param = mes_seleccionado if mes_seleccionado > 0 else None
        anio_param = int(anio_seleccionado) if anio_seleccionado != "SIN FILTRO" else None
        query = "CALL sp_filtrar_ingresos_egresos(%s, %s)"
        self.df_ingresos_egresos = pd.read_sql(
            query, 
            self.engine, 
            params=(mes_param, anio_param)
        )
        self.mostrar_datos(self.df_ingresos_egresos)

    def show_popup(self):
        self.registrar = Reabastecer(self.menu_contabilidad, self.engine)
        self.menu_contabilidad.layout.addWidget(self.registrar)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        self.close()

    def llenarCajasDatos(self):
        try:
            query = "CALL sp_obtener_caja()"
            df_cajas = pd.read_sql(query, self.engine)
            if not df_cajas.empty:
                valor_caja_chica = df_cajas['total_cajaChica'][0]
                valor_caja_piura = df_cajas['total_cajaPiura'][0]
                self.lineEdit_2.setText(str(valor_caja_chica))
                self.lineEdit_3.setText(str(valor_caja_piura))
            else:
                QMessageBox.warning(self, "Advertencia", "No se encontraron datos en la tabla de caja.")
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Error al obtener datos de la caja: {e}")

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo Registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_contabilidad.mostrar_registroIngresosEgresos()

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
            ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_lista_ingresosegresos.html")
            with open(ruta_template, "r") as archivo_html_template:
                contenido_template = archivo_html_template.read()
            template = Template(contenido_template)
            html_renderizado = template.render(results=results)
            ruta_resultado = os.path.join(ruta_actual, "..", "utils", "listado_ingresosegresos.html")
            with open(ruta_resultado, "w") as archivo_html_resultado:
                archivo_html_resultado.write(html_renderizado)
            dialogo = QFileDialog()
            dialogo.setAcceptMode(QFileDialog.AcceptSave)
            dialogo.setNameFilter("Archivos PDF (*.pdf)")
            dialogo.setDefaultSuffix("pdf")
            fecha_actual = datetime.now().strftime("%d-%m-%Y")
            nombre_archivo = f"Lista de Ingresos y Egresos - {fecha_actual}.pdf"
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
            concepto = self.tableWidget.item(fila, 1) 
            tipo = self.tableWidget.item(fila, 2) 
            if concepto is not None and tipo is not None:
                ne = concepto.text().lower()
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
    
        id_caja = self.obtener_id_caja(data[0])

        self.registrar = RegistrarIngresosEgresos(self.menu_contabilidad, self.engine, data, id_caja)

        self.registrar.lineEdit.setText(data[0])
        fecha_formateada = data[1].split()[0] 
        self.registrar.dateEdit.setDate(QDate.fromString(fecha_formateada, "dd-MM-yyyy"))
        self.registrar.lineEdit_2.setText(data[2])

        if data[3] == "INGRESO":
            self.registrar.comboBox.setCurrentIndex(0)
        elif data[3] == "EGRESO":
            self.registrar.comboBox.setCurrentIndex(1)
        self.registrar.doubleSpinBox.setValue(float(data[4]))

        if data[5] == "CAJA CHICA":
            self.registrar.checkBox.setChecked(True)
        elif data[5] == "CAJA PIURA":
            self.registrar.checkBox.setChecked(False)

        if data[2] == "LICENCIA SINDICAL" or data[2] == "CUOTA ORDINARIA":
            self.registrar.dateEdit.setEnabled(False)
            self.registrar.lineEdit_2.setEnabled(False)
            self.registrar.comboBox.setEnabled(False)
            self.registrar.doubleSpinBox.setEnabled(False)
            self.registrar.checkBox.setEnabled(False)
            self.registrar.actionGrabar.setEnabled(False)
            self.registrar.actionEliminar.setEnabled(False)
            QMessageBox.warning(self, "Advertencia", "Este registro se edita desde el módulo correspondiente")
        elif data[2] == "REABASTECER" :
            self.registrar.dateEdit.setEnabled(False)
            self.registrar.lineEdit_2.setEnabled(False)
            self.registrar.comboBox.setEnabled(False)
            self.registrar.doubleSpinBox.setEnabled(False)
            self.registrar.checkBox.setEnabled(False)
            self.registrar.actionGrabar.setEnabled(False)
            self.registrar.actionEliminar.setEnabled(True)
            QMessageBox.warning(self, "Advertencia", "No se puede editar el REABASTECER")
        else:
            self.registrar.dateEdit.setEnabled(True)
            self.registrar.lineEdit_2.setEnabled(True)
            self.registrar.comboBox.setEnabled(True)
            self.registrar.doubleSpinBox.setEnabled(True)
            self.registrar.checkBox.setEnabled(True)
            self.registrar.actionGrabar.setEnabled(True)
            self.registrar.actionEliminar.setEnabled(True)

        self.menu_contabilidad.layout.addWidget(self.registrar)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        self.close()

    def obtener_id_caja(self, id_origen):
        """
        Obtiene el ID de la caja correspondiente a un registro.
        """
        with self.engine.connect() as conn:
            query = text("SELECT id FROM caja WHERE id_origen = :id_origen")
            result = conn.execute(query, {'id_origen': id_origen}).fetchone()
            return result[0] if result else None


class RegistrarIngresosEgresos(QMainWindow, Ui_MainWindow_Registroingresos_egresos):
    def __init__(self, menu_contabilidad, engine=None, data=None, id_caja=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)
        self.global_var = GlobalVar()
        self.menu_contabilidad = menu_contabilidad
        self.engine = engine
        self.id_caja = id_caja 
        self.load()
        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionGrabar.triggered.connect(self.grabar)
        self.actionEliminar.triggered.connect(self.eliminar)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)
        self.checkBox.stateChanged.connect(self.calcularCajasFinales)
        self.doubleSpinBox.valueChanged.connect(self.calcularCajasFinales)
        self.comboBox.currentIndexChanged.connect(self.calcularCajasFinales)
        self.dateEdit.dateChanged.connect(self.calcularCajasFinales)

    def calcularCajasFinales(self):
        id = self.lineEdit.text()
        if id.isdigit():
            return

        try:
            valor_movimiento = self.doubleSpinBox.value()
            caja_chica = float(self.lineEdit_5.text()) if self.lineEdit_5.text() else 0.0
            caja_piura = float(self.lineEdit_4.text()) if self.lineEdit_4.text() else 0.0
            if self.checkBox.isChecked():
                if self.comboBox.currentIndex() == 0:
                    nuevo_caja_chica = caja_chica + valor_movimiento
                    self.lineEdit_7.setText(f"{nuevo_caja_chica:.2f}")
                else:
                    nuevo_caja_chica = caja_chica - valor_movimiento
                    self.lineEdit_7.setText(f"{nuevo_caja_chica:.2f}")
                self.lineEdit_6.setText("0.00")

            else:
                if self.comboBox.currentIndex() == 0:
                    nuevo_caja_piura = caja_piura + valor_movimiento
                    self.lineEdit_6.setText(f"{nuevo_caja_piura:.2f}")
                else:
                    nuevo_caja_piura = caja_piura - valor_movimiento
                    self.lineEdit_6.setText(f"{nuevo_caja_piura:.2f}")

                self.lineEdit_7.setText("0.00")

            self.updateLineEditColor(self.lineEdit_6)
            self.updateLineEditColor(self.lineEdit_7)

        except ValueError:
            QMessageBox.warning(self, "Advertencia", "Por favor ingrese valores numéricos válidos.")


    def updateLineEditColor(self, lineEdit):
        try:
            valor = float(lineEdit.text())
            if valor == 0:
                lineEdit.setStyleSheet("color: red;")
            else:
                lineEdit.setStyleSheet("")
        except ValueError:
            lineEdit.setStyleSheet("color: red;")

    def llenarCajasDatos(self):
        try:
            query = "CALL sp_obtener_caja()"
            df_cajas = pd.read_sql(query, self.engine)
            if not df_cajas.empty:
                valor_caja_chica = df_cajas['total_cajaChica'][0]
                valor_caja_piura = df_cajas['total_cajaPiura'][0]
                self.lineEdit_5.setText(str(valor_caja_chica))
                self.lineEdit_4.setText(str(valor_caja_piura))
            else:
                QMessageBox.warning(self, "Advertencia", "No se encontraron datos en la tabla de caja.")
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Error al obtener datos de la caja: {e}")

    def calcularNuevoValor(self, valor_inicial, valorMovimiento, es_suma):
        nuevo_valor = valor_inicial + valorMovimiento if es_suma else valor_inicial - valorMovimiento
        if nuevo_valor < 0:
            QMessageBox.warning(self, "Advertencia", "El valor resultante no puede ser negativo. El valor del movimiento se ha restablecido a 0.")
            self.doubleSpinBox.setValue(0)
            return None
        return nuevo_valor
        
    def grabar(self):
        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea grabar un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            id = self.lineEdit.text()
            fecha = self.dateEdit.date().toString("yyyy-MM-dd")
            concepto = self.lineEdit_2.text()
            tipo = 0 if self.comboBox.currentIndex() == 0 else 1
            
            cantidad = self.doubleSpinBox.value() if tipo == 0 else -self.doubleSpinBox.value()
            
            origen = "CAJA CHICA" if self.checkBox.isChecked() else "CAJA PIURA"
            id_secretaria = self.global_var.id_secretaria
            secretaria = self.global_var.secretaria
            tipo_caja = "INGRESO" if tipo == 0 else "EGRESO"
            cajaChica = cantidad if origen == "CAJA CHICA" else 0
            cajaPiura = cantidad if origen == "CAJA PIURA" else 0
            section = "INGRESOS Y EGRESOS"
            id_origen_query = "SELECT COALESCE(MAX(id), 0) FROM ingresos_egresos"

            if concepto and cantidad:
                try:
                    id = int(id) if id.isdigit() else None
                    with self.engine.begin() as conn:
                        sp_ingreso_egreso = text("""
                            CALL sp_insertar_actualizar_ingreso_egreso(:id, :fecha, :concepto, :tipo, :cantidad, :origen)
                        """)
                        conn.execute(sp_ingreso_egreso, {
                            'id': id,
                            'fecha': fecha,
                            'concepto': concepto,
                            'tipo': tipo,
                            'cantidad': cantidad,
                            'origen': origen
                        })

                        id_origen_result = conn.execute(text(id_origen_query)).fetchone()
                        id_origen = id_origen_result[0] if id_origen_result else 1
                        if not self.lineEdit.text():
                            self.guardar_caja(conn, cajaChica, cajaPiura, fecha, id_secretaria, secretaria, tipo_caja, id_origen, section)
                        else:
                            self.actualizar()

                        QMessageBox.information(self, "Éxito", "Se ha guardado el registro correctamente.")
                        self.close()

                except Exception as e:
                    QMessageBox.critical(self, "Error", f"Error al grabar el registro: {str(e)}")
            else:
                QMessageBox.warning(self, "Advertencia", "Los campos que contienen un (*) son obligatorios.")

    def guardar_caja(self, conn, cajaChica, cajaPiura, fecha, id_secretaria, secretaria, tipo, id_origen, section):
        """Función para guardar los datos en la tabla de caja."""
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

    def actualizar(self):
        """
        Función que actualizará el registro existente en la base de datos.
        """
        try:
            with self.engine.begin() as conn:
                if self.checkBox.isChecked():
                    cajaChica = self.doubleSpinBox.value() if self.comboBox.currentIndex() == 0 else -self.doubleSpinBox.value()
                    cajaPiura = 0
                else:
                    cajaChica = 0
                    cajaPiura = self.doubleSpinBox.value() if self.comboBox.currentIndex() == 0 else -self.doubleSpinBox.value()

                fecha = self.dateEdit.date().toString("yyyy-MM-dd")
                id_secretaria = self.global_var.id_secretaria
                secretaria = self.global_var.secretaria
                tipo = "INGRESO" if self.comboBox.currentIndex() == 0 else "EGRESO"
                id_origen = self.lineEdit.text()
                section = "INGRESOS Y EGRESOS"

                actualizar_caja_stmt = text("""
                    UPDATE caja 
                    SET cajaChica = :cajaChica, cajaPiura = :cajaPiura, fecha = :fecha, 
                        id_secretaria = :id_secretaria, secretaria = :secretaria, 
                        tipo = :tipo, id_origen = :id_origen, section = :section
                    WHERE id = :id_caja;
                """)

                conn.execute(actualizar_caja_stmt, {
                    'cajaChica': cajaChica,
                    'cajaPiura': cajaPiura,
                    'fecha': fecha,
                    'id_secretaria': id_secretaria,
                    'secretaria': secretaria,
                    'tipo': tipo,
                    'id_origen': id_origen,
                    'section': section,
                    'id_caja': self.id_caja
                })

                QMessageBox.information(self, "Éxito", "Se ha actualizado el registro correctamente.")
        
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Error al actualizar el registro: {str(e)}")



    def eliminar(self):
        id = self.lineEdit.text()
        if not id.isdigit():
            QMessageBox.warning(self, "Advertencia", "Necesita seleccionar un registro válido.")
            return
        id = int(id)

        respuesta = QMessageBox.question(self, "Confirmar Eliminación", "¿Estás seguro de eliminar el registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta != QMessageBox.Yes:
            QMessageBox.warning(self, "Advertencia", "Operación cancelada.")
            return

        try:
            with self.engine.begin() as conn:
                sp_eliminar_ingreso_egreso = text("CALL sp_eliminar_ingreso_egreso(:id)")
                conn.execute(sp_eliminar_ingreso_egreso, {'id': id})

                if self.id_caja:
                    self.eliminar_caja(conn, self.id_caja)
                else:
                    QMessageBox.warning(self, "Advertencia", "No se pudo obtener el ID de la caja para eliminar.")

            QMessageBox.information(self, "Éxito", "Se ha eliminado el registro correctamente.")
            self.close()

        except Exception as e:
            QMessageBox.critical(self, "Error", f"Error al eliminar el registro: {e}")

    def eliminar_caja(self, conn, id_caja):
        """
        Elimina el registro en la tabla 'caja' correspondiente al id_caja.
        """
        try:
            section = "INGRESOS Y EGRESOS"
            eliminar_caja_stmt = text("DELETE FROM caja WHERE id = :id_caja AND section = :section")
            conn.execute(eliminar_caja_stmt, {'id_caja': id_caja, 'section': section})
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Error al eliminar el registro en caja: {e}")


    def load(self):
        self.actionImprimir.setEnabled(True)
        self.dateEdit.setDate(QDate.currentDate())
        self.llenarCajasDatos()

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_contabilidad.mostrar_registroIngresosEgresos()

    def exportarPdf(self):
        if not self.lineEdit.text():
            QMessageBox.warning(self, "Alerta", "Necesita seleccionar un recibo")
        else:
            respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar el recibo a PDF?", QMessageBox.Yes | QMessageBox.No)

            if respuesta == QMessageBox.Yes:
                id_ingreso_egreso = self.lineEdit.text()
                fecha = self.dateEdit.date().toString("dd-MM-yyyy")
                concepto = self.lineEdit_2.text()
                tipo = self.comboBox.currentText() 
                cantidad = float(self.doubleSpinBox.value())
                origen = self.checkBox.isChecked()

                ruta_actual = os.path.abspath(os.path.dirname(__file__))
                ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_registro_ingresos_egresos.html")

                with open(ruta_template, "r") as archivo_html_template:
                    contenido_template = archivo_html_template.read()
                template = Template(contenido_template)

                html_renderizado = template.render(
                    id_ingreso_egreso=id_ingreso_egreso, 
                    fecha=fecha,
                    concepto=concepto,
                    tipo=tipo,
                    cantidad=cantidad,
                    origen=origen
                )

                ruta_resultado = os.path.join(ruta_actual, "..", "utils", "registro_ingresos_egresos.html")
                with open(ruta_resultado, "w") as archivo_html_resultado:
                    archivo_html_resultado.write(html_renderizado)

                dialogo = QFileDialog()
                dialogo.setAcceptMode(QFileDialog.AcceptSave)
                dialogo.setNameFilter("Archivos PDF (*.pdf)")
                dialogo.setDefaultSuffix("pdf")

                nombre_archivo = f"Movimiento de dinero N° {id_ingreso_egreso}.pdf"
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

class Reabastecer(QMainWindow, Ui_MainWindow_Reabastecer):
    def __init__(self,menu_contabilidad, engine=None,data=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)
        self.global_var = GlobalVar()
        self.engine = engine
        self.menu_contabilidad = menu_contabilidad
        self.load()
        self.actionSalir.triggered.connect(self.cerrar)
        self.actionGrabar.triggered.connect(self.grabar)
        self.pushButton.clicked.connect(self.transferir)

    def grabar(self):
        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea realizar el reabastecimiento de la caja?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            fecha = QDate.currentDate().toString("yyyy-MM-dd")
            tipo = "REABASTECIMIENTO"
            id_secretaria = self.global_var.id_secretaria
            secretaria = self.global_var.secretaria
            nuevocajaChica = self.lineEdit_6.text()
            nuevocajaPiura = self.lineEdit_5.text()
            section = "INGRESOS Y EGRESOS"

            if nuevocajaChica and nuevocajaPiura:
                try:
                    if self.comboBox.currentIndex() == 0:
                        nuevocajaPiura = -(abs(self.doubleSpinBox.value()))
                        nuevocajaChica = +(abs(self.doubleSpinBox.value()))
                    else:
                        nuevocajaPiura = +(abs(self.doubleSpinBox.value()))
                        nuevocajaChica = -(abs(self.doubleSpinBox.value()))
                except ValueError:
                    QMessageBox.warning(self, "Advertencia", "Los valores de Caja Chica y Caja Piura deben ser numéricos.")
                    return
                
                try:
                    with self.engine.begin() as conn:
                        id_origen = self.generarIngresoEgreso(conn, fecha, "REABASTECER", nuevocajaChica, nuevocajaPiura)
                        insert_reabastecimiento = text("""
                            CALL sp_insertar_caja(:cajaChica, :cajaPiura, :fecha, :id_secretaria, :secretaria, :tipo, :id_origen, :section)
                        """)
                        conn.execute(insert_reabastecimiento, {
                            'cajaChica': nuevocajaChica,
                            'cajaPiura': nuevocajaPiura,
                            'fecha': fecha,
                            'id_secretaria': id_secretaria,
                            'secretaria': secretaria,
                            'tipo': tipo,
                            'id_origen': id_origen,
                            'section': section
                        })
                        
                    QMessageBox.information(self, "Éxito", "Se ha guardado el reabastecimiento correctamente.")
                    self.close()

                except Exception as e:
                    QMessageBox.critical(self, "Error", f"Error al guardar el reabastecimiento: {e}")
            else:
                QMessageBox.warning(self, "Advertencia", "Los campos de Caja Chica y Caja Piura son obligatorios.")

    def generarIngresoEgreso(self, conn, fecha, concepto, nuevocajaChica, nuevocajaPiura):
        """
        Función para generar el registro de ingresos/egresos en la tabla correspondiente
        usando el procedimiento almacenado y devolver el id_origen generado.
        """
        try:
            if self.comboBox.currentIndex() == 0:
                origen = "CAJA PIURA"
                cantidad = nuevocajaPiura
            else:
                origen = "CAJA CHICA"
                cantidad = nuevocajaChica
            sp_insertar_ingreso_egreso = text("""
                CALL sp_insertar_actualizar_ingreso_egreso(NULL, :fecha, :concepto, 0, :cantidad, :origen)
            """)
            conn.execute(sp_insertar_ingreso_egreso, {
                'fecha': fecha,
                'concepto': concepto,
                'cantidad': abs(cantidad),
                'origen': origen
            })
            query_id_origen = "SELECT COALESCE(MAX(id), 0) FROM ingresos_egresos"
            result = conn.execute(text(query_id_origen)).fetchone()
            id_origen = result[0] if result else 1

            return id_origen

        except Exception as e:
            QMessageBox.critical(self, "Error", f"Error al registrar ingreso/egreso: {str(e)}")
            return None

    def transferir(self):
        valor_lineEdit_2 = float(self.lineEdit_2.text())
        valor_lineEdit_3 = float(self.lineEdit_3.text())
        valor_doubleSpinBox = self.doubleSpinBox.value()
        if self.comboBox.currentIndex() == 0:
            nuevo_valor_lineEdit_6 = valor_lineEdit_2 + valor_doubleSpinBox
            nuevo_valor_lineEdit_5 = valor_lineEdit_3 - valor_doubleSpinBox
        elif self.comboBox.currentIndex() == 1:
            nuevo_valor_lineEdit_6 = valor_lineEdit_2 - valor_doubleSpinBox
            nuevo_valor_lineEdit_5 = valor_lineEdit_3 + valor_doubleSpinBox
        self.lineEdit_6.setText(f"{nuevo_valor_lineEdit_6:.2f}")
        self.lineEdit_5.setText(f"{nuevo_valor_lineEdit_5:.2f}")
        suma_total = nuevo_valor_lineEdit_5 + nuevo_valor_lineEdit_6
        self.lineEdit_7.setText(f"{suma_total:.2f}")
        if nuevo_valor_lineEdit_6 < 0 or nuevo_valor_lineEdit_5 < 0:
            QMessageBox.warning(self, "Advertencia", "El valor resultante no puede ser negativo.")
            self.lineEdit_5.setText("")
            self.lineEdit_6.setText("")
            self.lineEdit_7.setText("")

    def load(self):
        self.llenarCajasDatos()

    def llenarCajasDatos(self):
        query = "CALL sp_obtener_caja();"
        df_cajas = pd.read_sql(query, self.engine)
        if not df_cajas.empty:
            valor_caja_chica = float(df_cajas.iloc[0, 0])
            valor_caja_piura = float(df_cajas.iloc[0, 1])
            self.lineEdit_2.setText(f"{valor_caja_chica:.2f}")
            self.lineEdit_3.setText(f"{valor_caja_piura:.2f}")
            self.lineEdit_4.setText(f"{(valor_caja_chica + valor_caja_piura):.2f}")

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar el listado actual?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
        