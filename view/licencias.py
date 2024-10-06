
from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QFileDialog, QSizePolicy, QVBoxLayout
from models.ui_lista_licencias import Ui_MainWindow as Ui_MainWindow_ListaLicencias
from models.ui_registro_licencias import Ui_MainWindow as Ui_MainWindow_RegistroLicencias
from models.ui_buscar_Dirigente import Ui_MainWindow as Ui_MainWindow_buscarDirigente
from PySide6.QtCore import QDate, Qt
from jinja2 import Template
from view.variables_globales import GlobalVar
from sqlalchemy import text
import pandas as pd
from datetime import datetime
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
        self.global_var = GlobalVar()
        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)

        self.lineEdit.textChanged.connect(self.buscar)
        self.tableWidget.itemDoubleClicked.connect(self.enviarSeleccionado)

    def load(self):
        self.tableWidget.setColumnHidden(0, True)
        self.tableWidget.setColumnHidden(2, True)
        self.listar()

    def listar(self):
        query = "CALL sp_listar_licencias()"
        df_licencias = pd.read_sql(query, self.engine)

        if not df_licencias.empty:
            num_columns = len(df_licencias.columns)
            self.tableWidget.setColumnCount(num_columns)
            self.tableWidget.setRowCount(len(df_licencias))

            mappings = {
                5: {
                    "0": "LIC. ART. 32",
                    "1": "LIC. ART. 17"
                },
                7: {
                    "0": "LIC. NORMAL",
                    "1": "LIC. PERSONAL",
                    "2": "LIC. ASISTENCIA"
                },
                8: {
                    "0": "CONTABILIZA",
                    "1": "NO CONTABILIZA",
                    "2": "ANULADO"
                },
                9: {
                    "0": "CONFORME",
                    "1": "PAGADO"
                }
            }

            def apply_mapping(value, mapping):
                return mapping.get(str(value), str(value))

            for row_idx, row in df_licencias.iterrows():
                for col_idx, cell_data in enumerate(row):
                    item = QTableWidgetItem()

                    if col_idx == 1:
                        if isinstance(cell_data, pd.Timestamp):
                            fecha_str = cell_data.strftime("%d-%m-%Y")
                        else:
                            try:
                                fecha = pd.to_datetime(cell_data)
                                fecha_str = fecha.strftime("%d-%m-%Y")
                            except (ValueError, TypeError):
                                fecha_str = str(cell_data)
                        item.setText(fecha_str)
                    
                    elif col_idx in mappings:
                        item.setText(apply_mapping(cell_data, mappings[col_idx]))
                    
                    else:
                        item.setText(str(cell_data))

                    self.tableWidget.setItem(row_idx, col_idx, item)

            self.tableWidget.resizeColumnsToContents()

        else:
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")


    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo Registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarLicencias()

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

            fecha_actual = datetime.now().strftime("%d-%m-%Y")
            nombre_archivo = f"Lista de Licencias - {fecha_actual}.pdf"
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
        self.registrar.lineEdit_3.setText(data[3] + " " + data[4])
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

        with self.engine.begin() as conn:
            id_recibo_existente = self.buscar_recibo(conn, data)
            self.registrar.id_recibo_existente = id_recibo_existente
            id_egreso = self.buscar_ingreso_egreso(conn, data, tipo="EGRESO")
            self.registrar.id_ingreso_egreso_egreso = id_egreso
            id_ingreso = self.buscar_ingreso_egreso(conn, data, tipo="INGRESO")
            self.registrar.id_ingreso_egreso_ingreso = id_ingreso
            id_caja_ingreso, id_caja_egreso = self.buscar_caja(conn, data)
            self.registrar.id_caja_ingreso = id_caja_ingreso
            self.registrar.id_caja_egreso = id_caja_egreso

        self.menu_registros.layout.addWidget(self.registrar)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        self.registrar.dateEdit.setFocus()
        self.close()
    def buscar_ingreso_egreso(self, conn, data, tipo):
        """
        Busca el ID del registro de ingresos_egresos basado en los datos proporcionados.
        """
        fecha_texto = data[1].split()[0]
        try:
            fecha = datetime.strptime(fecha_texto, "%d-%m-%Y").strftime("%Y/%m/%d")
        except ValueError as e:
            print(f"Error al formatear la fecha en buscar_ingreso_egreso: {e}")
            return None

        concepto = "LICENCIA SINDICAL"
        origen = "CAJA PIURA"
        cantidad = float(data[10]) if tipo == "INGRESO" else -(abs(float(data[11]) + float(data[12])))

        query = text("""
            SELECT id
            FROM ingresos_egresos
            WHERE fecha = :fecha
            AND concepto = :concepto
            AND tipo = :tipo
            AND cantidad = :cantidad
            AND origen = :origen
            LIMIT 1;
        """)

        result = conn.execute(query, {
            'fecha': fecha,
            'concepto': concepto,
            'tipo': tipo,
            'cantidad': cantidad,
            'origen': origen
        }).fetchone()

        return result[0] if result else None

    def buscar_caja(self, conn, data):
        """
        Busca los IDs de la caja correspondientes al ingreso y egreso según los datos proporcionados.
        """
        fecha_texto = data[1].split()[0]
        try:
            fecha = datetime.strptime(fecha_texto, "%d-%m-%Y").strftime("%Y-%m-%d")
        except ValueError as e:
            print(f"Error al formatear la fecha en buscar_caja: {e}")
            return None, None
        id_origen = data[0]
        id_secretaria = self.global_var.id_secretaria
        secretaria = self.global_var.secretaria
        section = "LICENCIAS"

        query_ingreso = text("""
            SELECT id
            FROM caja
            WHERE cajaChica = 0
            AND cajaPiura = :cajaPiura
            AND fecha = :fecha
            AND id_secretaria = :id_secretaria
            AND secretaria = :secretaria
            AND tipo = "INGRESO"
            AND id_origen = :id_origen
            AND section = :section
            LIMIT 1;
        """)

        query_egreso = text("""
            SELECT id
            FROM caja
            WHERE cajaChica = 0
            AND cajaPiura = :cajaPiura_egreso
            AND fecha = :fecha
            AND id_secretaria = :id_secretaria
            AND secretaria = :secretaria
            AND tipo = "EGRESO"
            AND id_origen = :id_origen
            AND section = :section
            LIMIT 1;
        """)

        parametros_ingreso = {
            'cajaPiura': float(data[10]),
            'fecha': fecha,
            'id_secretaria': id_secretaria,
            'secretaria': secretaria,
            'id_origen': id_origen,
            'section': section
        }

        parametros_egreso = {
            'cajaPiura_egreso': -(float(data[11]) + float(data[12])),
            'fecha': fecha,
            'id_secretaria': id_secretaria,
            'secretaria': secretaria,
            'id_origen': id_origen,
            'section': section
        }

        result_ingreso = conn.execute(query_ingreso, parametros_ingreso).fetchone()
        result_egreso = conn.execute(query_egreso, parametros_egreso).fetchone()

        id_caja_ingreso = result_ingreso[0] if result_ingreso else None
        id_caja_egreso = result_egreso[0] if result_egreso else None

        return id_caja_ingreso, id_caja_egreso

    def buscar_recibo(self, conn, data):
        """
        Busca el ID del recibo relacionado con los datos proporcionados.
        """
        fecha_texto = data[1].split()[0]
        try:
            fecha = datetime.strptime(fecha_texto, "%d-%m-%Y").strftime("%Y/%m/%d")
        except ValueError as e:
            print(f"Error al formatear la fecha: {e}")
            return None

        cantidad = +(abs(float(data[10]) - (float(data[11]) + float(data[12]))))
        detalle = "LICENCIA - " + data[6]
        id_secretario = data[2]

        query = text("""
            SELECT id
            FROM recibos
            WHERE serie = "ADM"
            AND formato = "LS"
            AND id_dirigente = :id_secretaria
            AND grupo = "ADMINISTRATIVO"
            AND concepto = "LICENCIA SINDICAL"
            AND cantidad = :cantidad
            AND fecha = :fecha
            AND detalle = :detalle
            LIMIT 1;
        """)

        result = conn.execute(query, {
            'id_secretaria': id_secretario,
            'cantidad': cantidad,
            'fecha': fecha,
            'detalle': detalle
        }).fetchone()

        return result[0] if result else None
    
class RegistrarLicencias(QMainWindow, Ui_MainWindow_RegistroLicencias):
    def __init__(self, menu_registros, engine=None, data=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)
        self.menu_registros = menu_registros
        self.engine = engine
        self.id_recibo_existente = None
        self.id_ingreso_egreso_egreso = None
        self.id_ingreso_egreso_ingreso = None
        self.id_caja_ingreso = None
        self.id_caja_egreso = None
        self.load()
        self.global_var = GlobalVar()

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionGrabar.triggered.connect(self.grabar)
        self.actionEliminar.triggered.connect(self.eliminar)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)
        self.pushButton.clicked.connect(self.show_popup)
        self.doubleSpinBox.valueChanged.connect(self.totalCalcular)
        self.doubleSpinBox_2.valueChanged.connect(self.totalCalcular)
        self.doubleSpinBox_3.valueChanged.connect(self.totalCalcular)

    def totalCalcular(self):
        suma = (self.doubleSpinBox_2.value() + self.doubleSpinBox_3.value()) - self.doubleSpinBox.value()
        self.lineEdit_5.setText(f"{suma:.2f}")

    def obtener_datos(self):
        """
        Obtiene los datos de la licencia desde los campos de entrada.
        """
        id = self.lineEdit.text()
        id_dirigente = self.lineEdit_2.text()
        fecha = self.dateEdit.date().toString("yyyy-MM-dd")
        tipo_lic = str(self.comboBox.currentIndex())
        estado_lic = str(self.comboBox_2.currentIndex())
        registro = str(self.comboBox_3.currentIndex())
        estado = str(self.comboBox_4.currentIndex())
        motivo = self.lineEdit_4.text()
        tardanza = self.doubleSpinBox.value()
        monto_pago = self.doubleSpinBox_2.value()
        movilidad = self.doubleSpinBox_3.value()

        id = int(id) if id.isdigit() else None

        return {
            'id': id,
            'fecha': fecha,
            'id_dirigente': id_dirigente,
            'tipo': tipo_lic,
            'motivo': motivo,
            'estado_asistencia': estado_lic,
            'registro': registro,
            'estado_canje': estado,
            'tardanza': tardanza,
            'monto': monto_pago,
            'movilidad': movilidad
        }

    def grabar(self):
        """
        Guarda o actualiza los registros de licencia, recibo, ingresos/egresos y caja.
        """
        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea grabar un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            datos_licencias = self.obtener_datos()
            ingreso = self.doubleSpinBox.value()
            egreso = -(abs(self.doubleSpinBox_2.value() + self.doubleSpinBox_3.value()))

            if datos_licencias['id_dirigente'] and datos_licencias['motivo']:
                try:
                    with self.engine.begin() as conn:
                        self.guardar_licencia(conn, datos_licencias)

                        self.guardar_o_actualizar_recibo(conn)

                        self.guardar_o_actualizar_ingresos_egresos(conn, ingreso, egreso)

                        self.guardar_o_actualizar_caja(conn, ingreso, egreso)

                        QMessageBox.information(self, "Éxito", "Operación completada con éxito.")
                        self.close()

                except Exception as e:
                    QMessageBox.critical(self, "Error", f"Error al grabar en la base de datos: {str(e)}")
            else:
                QMessageBox.warning(self, "Advertencia", "Los campos que contienen un (*) son obligatorios.")

    def guardar_licencia(self, conn, datos_licencias):
        """
        Guarda o actualiza la licencia en la base de datos.
        """
        grabar_licencia_stmt = text("""
            CALL sp_insertar_actualizar_licencia(:id, :fecha, :id_dirigente, :tipo, :motivo, 
                                                :estado_asistencia, :registro, :estado_canje, 
                                                :tardanza, :monto, :movilidad);
        """)
        conn.execute(grabar_licencia_stmt, datos_licencias)

    def guardar_o_actualizar_recibo(self, conn):
        """
        Guarda o actualiza el recibo en la base de datos.
        """
        datos_recibos = self.obtener_datos_recibos()
        if self.id_recibo_existente:
            actualizar_recibo_stmt = text("""
                UPDATE recibos
                SET serie = :serie, formato = :formato, id_dirigente = :id_dirigente, grupo = :grupo, concepto = :concepto, 
                    cantidad = :cantidad, fecha = :fecha, detalle = :detalle
                WHERE id = :id_recibo;
            """)
            datos_recibos['id_recibo'] = self.id_recibo_existente
            conn.execute(actualizar_recibo_stmt, datos_recibos)
        else:
            grabar_recibo_stmt = text("""
                INSERT INTO recibos (serie, formato, id_dirigente, grupo, concepto, cantidad, fecha, detalle)
                VALUES (:serie, :formato, :id_dirigente, :grupo, :concepto, :cantidad, :fecha, :detalle);
            """)
            conn.execute(grabar_recibo_stmt, datos_recibos)

    def obtener_datos_recibos(self):
        serie = "ADM"
        formato = "LS"
        id_dirigente = self.lineEdit_2.text()
        grupo = "ADMINISTRATIVO"
        concepto = "LICENCIA SINDICAL"
        cantidad = self.lineEdit_5.text()
        fecha = self.dateEdit.date().toString("yyyy-MM-dd")
        detalle = "LICENCIA - " + self.lineEdit_4.text()

        return {
            'serie': serie,
            'formato': formato,
            'id_dirigente': id_dirigente,
            'grupo': grupo,
            'concepto': concepto,
            'cantidad': cantidad,
            'fecha': fecha,
            'detalle': detalle,
        }

    def guardar_o_actualizar_ingresos_egresos(self, conn, ingreso, egreso):
        """
        Guarda o actualiza los registros de ingresos y egresos.
        """
        if self.id_ingreso_egreso_egreso:
            self.actualizar_ingresos_egresos(conn, self.id_ingreso_egreso_egreso, "EGRESO", egreso)
        else:
            self.insertar_ingresos_egresos(conn, "EGRESO", egreso)

        if self.id_ingreso_egreso_ingreso:
            self.actualizar_ingresos_egresos(conn, self.id_ingreso_egreso_ingreso, "INGRESO", ingreso)
        else:
            self.insertar_ingresos_egresos(conn, "INGRESO", ingreso)

    def actualizar_ingresos_egresos(self, conn, id_ingreso_egreso, tipo, cantidad):
        """
        Actualiza un registro de ingresos o egresos existente.
        """
        actualizar_ingreso_egreso_stmt = text("""
            UPDATE ingresos_egresos
            SET fecha = :fecha, concepto = :concepto, tipo = :tipo, 
                cantidad = :cantidad, origen = :origen
            WHERE id = :id_ingreso_egreso;
        """)
        datos_ingresos_egresos = self.obtener_datos_ingresos_egresos(tipo)
        datos_ingresos_egresos['id_ingreso_egreso'] = id_ingreso_egreso
        datos_ingresos_egresos['cantidad'] = cantidad
        conn.execute(actualizar_ingreso_egreso_stmt, datos_ingresos_egresos)

    def insertar_ingresos_egresos(self, conn, tipo, cantidad):
        """
        Inserta un nuevo registro de ingresos o egresos.
        """
        grabar_ingreso_egreso_stmt = text("""
            INSERT INTO ingresos_egresos (fecha, concepto, tipo, cantidad, origen)
            VALUES (:fecha, :concepto, :tipo, :cantidad, :origen);
        """)
        datos_ingresos_egresos = self.obtener_datos_ingresos_egresos(tipo)
        datos_ingresos_egresos['cantidad'] = cantidad
        conn.execute(grabar_ingreso_egreso_stmt, datos_ingresos_egresos)

    def obtener_datos_ingresos_egresos(self, tipo):
        fecha = self.dateEdit.date().toString("yyyy-MM-dd")
        concepto = "LICENCIA SINDICAL"
        cantidad = self.doubleSpinBox_2.value() + self.doubleSpinBox_3.value() if tipo == "EGRESO" else self.doubleSpinBox.value()
        origen = "CAJA PIURA"

        return {
            'fecha': fecha,
            'concepto': concepto,
            'tipo': tipo,
            'cantidad': cantidad,
            'origen': origen,
        }

    def guardar_o_actualizar_caja(self, conn, ingreso, egreso):
        """
        Guarda o actualiza los registros en la tabla 'caja' correspondientes al ingreso y egreso.
        """
        id_origen_result = conn.execute(text("SELECT COALESCE(MAX(id), 0) FROM licencias")).fetchone()
        id_origen = id_origen_result[0] if id_origen_result else 1

        if self.id_caja_ingreso:
            self.actualizar_caja(conn, ingreso, id_origen, "INGRESO")
        else:
            self.insertar_caja(conn, ingreso, id_origen, "INGRESO")

        if self.id_caja_egreso:
            self.actualizar_caja(conn, egreso, id_origen, "EGRESO")
        else:
            self.insertar_caja(conn, egreso, id_origen, "EGRESO")

    def actualizar_caja(self, conn, cajaPiura, id_origen, tipo):
        """
        Actualiza un registro de caja existente.
        """
        actualizar_caja_stmt = text("""
            UPDATE caja
            SET cajaChica = 0, cajaPiura = :cajaPiura, fecha = :fecha, 
                id_secretaria = :id_secretaria, secretaria = :secretaria, tipo = :tipo, section = :section
            WHERE id = :id_caja;
        """)
        conn.execute(actualizar_caja_stmt, {
            'cajaPiura': cajaPiura,
            'fecha': self.dateEdit.date().toString("yyyy-MM-dd"),
            'id_secretaria': self.global_var.id_secretaria,
            'secretaria': self.global_var.secretaria,
            'tipo': tipo,
            'section': "LICENCIAS",
            'id_caja': self.id_caja_ingreso if tipo == "INGRESO" else self.id_caja_egreso
        })

    def insertar_caja(self, conn, cajaPiura, id_origen, tipo):
        """
        Inserta un nuevo registro en la tabla 'caja'.
        """
        sp_insertar_caja = text("""
            CALL sp_insertar_caja(:cajaChica, :cajaPiura, :fecha, :id_secretaria, :secretaria, :tipo, :id_origen, :section)
        """)
        conn.execute(sp_insertar_caja, {
            'cajaChica': 0,
            'cajaPiura': cajaPiura,
            'fecha': self.dateEdit.date().toString("yyyy-MM-dd"),
            'id_secretaria': self.global_var.id_secretaria,
            'secretaria': self.global_var.secretaria,
            'tipo': tipo,
            'id_origen': id_origen,
            'section': "LICENCIAS"
        })

    def eliminar(self):
        id_str = self.lineEdit.text()
        if id_str.isdigit():
            id = int(id_str)
            respuesta = QMessageBox.question(self, "Confirmar Eliminación", "¿Estás seguro de eliminar el registro?", QMessageBox.Yes | QMessageBox.No)

            if respuesta == QMessageBox.Yes:
                try:
                    with self.engine.begin() as conn:
                        if self.id_recibo_existente:
                            conn.execute(text("DELETE FROM recibos WHERE id = :id_recibo"), {'id_recibo': self.id_recibo_existente})
                        if self.id_ingreso_egreso_egreso:
                            conn.execute(text("DELETE FROM ingresos_egresos WHERE id = :id_egreso"), {'id_egreso': self.id_ingreso_egreso_egreso})
                        if self.id_ingreso_egreso_ingreso:
                            conn.execute(text("DELETE FROM ingresos_egresos WHERE id = :id_ingreso"), {'id_ingreso': self.id_ingreso_egreso_ingreso})
                        conn.execute(text("CALL sp_eliminar_licencia(:id);"), {'id': id})
                        self.eliminar_caja(conn, id)

                        QMessageBox.information(self, "Éxito", "Se ha eliminado la licencia, el recibo y los registros de ingreso/egreso correctamente.")
                        self.close()

                except Exception as e:
                    QMessageBox.critical(self, "Error", f"Error al eliminar el registro: {str(e)}")
            else:
                QMessageBox.warning(self, "Advertencia", "Operación cancelada.")
        else:
            QMessageBox.warning(self, "Advertencia", "Necesita seleccionar un registro primero.")

    def eliminar_caja(self, conn, id_origen):
        """
        Elimina el registro en la tabla 'caja' correspondiente al id_origen.
        """
        try:
            section = "LICENCIAS"
            eliminar_caja_stmt = text("DELETE FROM caja WHERE id_origen = :id_origen AND section = :section")
            conn.execute(eliminar_caja_stmt, {'id_origen': id_origen, 'section': section})
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Error al eliminar el registro en caja: {e}")

    def load(self):
        self.dateEdit.setDate(QDate.currentDate())
        self.dateEdit.setFocus()
        self.totalCalcular()

    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_registros.mostrar_registrarLicencias()

    def exportarPdf(self):
        if not self.lineEdit.text():
            QMessageBox.warning(self, "Alerta", "Necesita seleccionar un registro primero")
        else:
            respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar el registro seleccionado a PDF?", QMessageBox.Yes | QMessageBox.No)
            if respuesta == QMessageBox.Yes:
                datos_licencias = self.obtener_datos()

                nombre = self.lineEdit_3.text()
                fecha = self.dateEdit.date().toString("dd-MM-yyyy")

                ruta_actual = os.path.abspath(os.path.dirname(__file__))
                ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_registro_licencias.html")
                with open(ruta_template, "r") as archivo_html_template:
                    contenido_template = archivo_html_template.read()
                template = Template(contenido_template)

                html_renderizado = template.render(
                    nombre=nombre, fecha=fecha, tipo_lic=self.comboBox.currentText(),
                    motivo=datos_licencias['motivo'], estado_lic=self.comboBox_2.currentText(),
                    registro=self.comboBox_3.currentText(), estado=self.comboBox_4.currentText(),
                    tardanza=datos_licencias['tardanza'], monto=datos_licencias['monto'], movilidad=datos_licencias['movilidad']
                )

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

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar la ventana de registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()

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
        query = "CALL sp_buscar_dirigente()"
        
        try:
            dirigentes = pd.read_sql(query, self.engine)
            
            if not dirigentes.empty:
                self.tableWidget.setRowCount(len(dirigentes))
                self.tableWidget.setColumnCount(len(dirigentes.columns))
                self.tableWidget.setHorizontalHeaderLabels(dirigentes.columns)

                for row_idx, row_data in dirigentes.iterrows():
                    for col_idx, cell_data in enumerate(row_data):
                        item = QTableWidgetItem(str(cell_data))
                        self.tableWidget.setItem(row_idx, col_idx, item)

                self.tableWidget.resizeColumnsToContents()
            else:
                QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")

        except Exception as e:
            QMessageBox.critical(self, "Error", f"Error al listar dirigentes: {e}")


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