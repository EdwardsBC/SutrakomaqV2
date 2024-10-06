from PySide6.QtWidgets import QMainWindow, QTableWidgetItem, QMessageBox, QFileDialog, QSizePolicy
from models.ui_registro_recibo import Ui_MainWindow as Ui_MainWindow_RegistroRecibos
from models.ui_lista_recibos import Ui_MainWindow as Ui_MainWindow_ListaRecibos
from models.ui_buscar_Dirigente import Ui_MainWindow as Ui_MainWindow_buscarDirigente
from PySide6.QtCore import QDate, Qt
from datetime import datetime
from jinja2 import Template
from sqlalchemy import text
import pandas as pd
import calendar
import locale
import pdfkit
import os

class ListarRecibos(QMainWindow, Ui_MainWindow_ListaRecibos):
    def __init__(self, menu_contabilidad, engine):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.menu_contabilidad = menu_contabilidad
        self.engine = engine
        self.df_recibos = None

        self.load()

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionSalir.triggered.connect(self.cerrar)

        self.lineEdit.textChanged.connect(self.buscar)
        self.tableWidget.itemDoubleClicked.connect(self.enviarSeleccionado)

        self.dateEdit_6.dateChanged.connect(self.filtrarDatos)
        self.dateEdit_7.dateChanged.connect(self.filtrarDatos)

    def load(self):
        date = QDate.fromString("01/01/2000", "dd/MM/yyyy")
        self.dateEdit_6.setDate(date)
        self.tableWidget.setColumnHidden(0, True)
        self.tableWidget.setColumnHidden(3, True)

        self.cargarDatos()

    def cargarDatos(self):
        fecha_inicio_str = self.dateEdit_6.date().toString("yyyy-MM-dd")
        fecha_fin_str = self.dateEdit_7.date().toString("yyyy-MM-dd")

        query = f"""
            SELECT r.id,r.serie,r.formato, r.id_dirigente, d.nombre AS nombre_dirigente, r.grupo, r.concepto, r.cantidad, r.fecha, r.detalle
            FROM recibos r
            INNER JOIN dirigentes d ON r.id_dirigente = d.id
            WHERE r.fecha >= '{fecha_inicio_str}' AND r.fecha <= '{fecha_fin_str}'
            ORDER BY r.id ASC;
            """

        self.df_recibos = pd.read_sql(query, self.engine)

        if not self.df_recibos.empty:
            self.filtrarDatos()
        else:
            self.tableWidget.clearContents()
            QMessageBox.information(self, "Alerta", "No se han encontrado datos que listar.")

    def filtrarDatos(self):
        if self.df_recibos is None:
            return

        fecha_inicio = datetime.strptime(self.dateEdit_6.date().toString("yyyy-MM-dd"), "%Y-%m-%d").date()
        fecha_fin = datetime.strptime(self.dateEdit_7.date().toString("yyyy-MM-dd"), "%Y-%m-%d").date()

        df_filtrado = self.df_recibos[
            (self.df_recibos['fecha'] >= fecha_inicio) & 
            (self.df_recibos['fecha'] <= fecha_fin)
        ]

        self.tableWidget.setRowCount(len(df_filtrado))

        for row_idx, row in df_filtrado.iterrows():
            for col_idx, cell_data in enumerate(row):
                item = QTableWidgetItem(str(cell_data))
                if col_idx == 8:
                    fecha_str = cell_data.strftime("%d-%m-%Y")
                    item.setText(fecha_str)
                self.tableWidget.setItem(row_idx, col_idx, item)

        self.tableWidget.resizeColumnsToContents()
        self.buscar(self.lineEdit.text())


    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo Registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)
        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_contabilidad.mostrar_registroRecibos()

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
            ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_lista_recibos.html")

            with open(ruta_template, "r") as archivo_html_template:
                contenido_template = archivo_html_template.read()
            template = Template(contenido_template)

            html_renderizado = template.render(results=results)

            ruta_resultado = os.path.join(ruta_actual, "..", "utils", "listado_recibos.html")
            with open(ruta_resultado, "w") as archivo_html_resultado:
                archivo_html_resultado.write(html_renderizado)

            dialogo = QFileDialog()
            dialogo.setAcceptMode(QFileDialog.AcceptSave)
            dialogo.setNameFilter("Archivos PDF (*.pdf)")
            dialogo.setDefaultSuffix("pdf")

            fecha_inicio = self.dateEdit_6.date().toString("dd-MM-yyyy")
            fecha_fin = self.dateEdit_7.date().toString("dd-MM-yyyy")
            nombre_archivo = f"Lista de Recibos desde {fecha_inicio} hasta {fecha_fin}.pdf"
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
            item_dirigente = self.tableWidget.item(fila, 2)
            item_concepto = self.tableWidget.item(fila, 4)

            if item_dirigente is not None and item_concepto is not None:
                dirigente = item_dirigente.text()
                concepto = item_concepto.text().lower()

                if texto.lower() in dirigente.lower() or texto.lower() in concepto:
                    self.tableWidget.setRowHidden(fila, False)
                else:
                    self.tableWidget.setRowHidden(fila, True)

    def enviarSeleccionado(self, item):
        row = item.row()
        data = []
        for col in range(self.tableWidget.columnCount()):
            item_data = self.tableWidget.item(row, col)
            if item_data is not None:
                data.append(item_data.text())
            else:
                data.append("")
        self.registrar = RegistrarRecibos(self.menu_contabilidad, self.engine, data)

        self.registrar.lineEdit.setText(data[0])
        fecha_formateada = QDate.fromString(data[8], "yyyy-MM-dd")
        if fecha_formateada.isValid():
            self.registrar.dateEdit.setDate(fecha_formateada)
        else:
            self.registrar.dateEdit.setDate(QDate.currentDate())

        self.registrar.lineEdit_2.setText(data[3])
        self.registrar.lineEdit_3.setText(data[4])

        def set_comboBox_value(comboBox, value):
            index = comboBox.findText(value)
            if index != -1:
                comboBox.setCurrentIndex(index)

        set_comboBox_value(self.registrar.comboBox, data[5])
        set_comboBox_value(self.registrar.comboBox_2, data[6])


        try:
            self.registrar.doubleSpinBox.setValue(float(data[7]))
        except ValueError:
            self.registrar.doubleSpinBox.setValue(0.0)

        self.registrar.lineEdit_6.setText(data[9])

        if data[5] == "ADMINISTRATIVO" and data[6] == "LICENCIA SINDICAL":
            self.registrar.pushButton.setEnabled(False)
            self.registrar.comboBox.setEnabled(False)
            self.registrar.comboBox_2.setEnabled(False)
            self.registrar.doubleSpinBox.setEnabled(False)
            self.registrar.dateEdit.setEnabled(False)
            self.registrar.lineEdit_6.setEnabled(False)
            self.registrar.actionGrabar.setEnabled(False)
            self.registrar.lineEdit_3.setEnabled(False)
            self.registrar.actionEliminar.setEnabled(False)
            QMessageBox.warning(self, "Advertencia", "Las licencias se editan desde el modulo de Licencias")
        else:
            self.registrar.pushButton.setEnabled(True)
            self.registrar.comboBox.setEnabled(True)
            self.registrar.comboBox_2.setEnabled(True)
            self.registrar.doubleSpinBox.setEnabled(True)
            self.registrar.dateEdit.setEnabled(True)
            self.registrar.lineEdit_6.setEnabled(True)
            self.registrar.actionGrabar.setEnabled(True)
            self.registrar.lineEdit_3.setEnabled(True)
            self.registrar.actionEliminar.setEnabled(True)

        self.menu_contabilidad.layout.addWidget(self.registrar)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

        self.close()



class RegistrarRecibos(QMainWindow, Ui_MainWindow_RegistroRecibos):
    def __init__(self,menu_contabilidad, engine=None,data=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.menu_contabilidad = menu_contabilidad
        self.engine = engine

        self.load()

        self.actionNuevo.triggered.connect(self.nuevo)
        self.actionGrabar.triggered.connect(self.grabar)
        self.actionImprimir.triggered.connect(self.exportarPdf)
        self.actionEliminar.triggered.connect(self.eliminar)
        self.actionSalir.triggered.connect(self.cerrar)
        
        self.pushButton.clicked.connect(self.show_popup)

        self.comboBox.currentIndexChanged.connect(self.comboBox1)
        self.comboBox_2.currentIndexChanged.connect(self.comboBox2)

    def comboBox1(self):
        selected_category = self.comboBox.currentText()
        
        series_mapping = {
            "ACTIVO FIJO": "AF",
            "ADMINISTRATIVO": "ADM",
            "ALQUILER": "ALQ",
            "APORTE AFILIADOS": "AAFF",
            "APORTE CONVENIO COLECTIVO": "ACC",
            "APOYO SINDICAL": "APS",
            "ASESORIA": "ASR",
            "BENEFICIO CONVENIO COLECTIVO": "BCC",
            "BREAK": "BRK",
            "CAJA CHICA": "CC",
            "CAPACITACION": "CAP",
            "CARGO X ITF": "CITF",
            "CTA 1 CAJA PIURA": "CP",
            "DEVOLUCION": "DEV",
            "FALLECIMIENTO": "FAL",
            "INTERESES GANADOS": "IG",
            "LIMPIEZA": "LIM",
            "OBSEQUIO": "OBS",
            "SERVICIO": "SER",
            "UTILES DE OFICINA": "UTO",
            "OTROS": "OT"
        }
        
        if selected_category in series_mapping:
            self.lineEdit_4.setText(series_mapping[selected_category])
        else:
            self.lineEdit_4.setText("")

    def comboBox2(self):
        selected_format = self.comboBox_2.currentText()

        format_mapping = {
            "INVENTARIO": "I",
            "ACCESORIOS PC": "AP",
            "ACTIVO FIJO": "AF",
            "CAMARA DE SEGURIDAD": "CS",
            "ASESORIA ABOGADO": "AA",
            "ASESORIA CONTABILIDAD": "AC",
            "ASESORIA ECONOMISTA": "AE",
            "LICENCIA SINDICAL": "LS",
            "MOVILIDAD": "M",
            "SECRETARIA": "S",
            "OTROS": "OT",
            "ALQUILER DE LOCAL ASAMBLEA": "ALA",
            "ALQUILER DE OFICINA": "AO",
            "APORTE SINDICAL": "AS",
            "BENEFICIO COLECTIVO": "BC",
            "APOYO SINDICAL": "AS",
            "DIA DE LA MADRE": "DM",
            "FALLECIMIENTO DE FAMILIAR": "FF",
            "FESTIVIDADES": "F",
            "HIPERMERCADOS TOTTUS S.A.": "HT",
            "LEGAL - LABORAL": "LL",
            "LEGAL - LABORAL (PRESTAMO)": "LLP",
            "AGUINALDO NAVIDEÑO": "AN",
            "ESCOLARIDAD 2023 - 2024": "ES",
            "QUINQUENIO 2023": "Q23",
            "QUINQUENIO 2024": "Q24",
            "CONSUMO DIRIGENTES": "CD",
            "CONSUMO REUNION DIRIGENTES": "CRD",
            "PASAJES Y BREAK": "PB",
            "REUNION CUENTA FISCALIZADORA": "RCF",
            "REUNION DE DIRIGENTES": "RD",
            "VIATICOS DIRIGENTES": "VD",
            "SALDO 2022": "S22",
            "VIATICOS": "V",
            "CAPACITACION": "C",
            "SUSCRIPCIONES (CARLHEY)": "SC",
            "CARGOS BANCARIOS": "CB",
            "DESCUENTO 10% RETRIBUCION": "D10R",
            "DEVOLUCION": "DV",
            "DEVOLUCION MULTA": "DM",
            "DEVOLUCION MULTAS": "DMS",
            "DEVOLUCION X ERROR": "DXE",
            "FALLECIMIENTO DE FAMILIAR": "FF",
            "CARGO BANCARIO": "CB",
            "INTERESES GANADOS": "IG",
            "LIMPIEZA DE LOCAL": "LL",
            "LIMPIEZA DE OFICINA": "LO",
            "OBSEQUIO": "O",
            "BASE DE DATOS (NUBE)": "BDN",
            "CELULAR BITEL": "CB",
            "DESARROLLO DE SISTEMA": "DS",
            "INTERNET CLARO": "IC",
            "PAGINA WEB": "PW",
            "SERVICIO WEB": "SW",
            "UTILES DE LIMPIEZA": "UL",
            "UTILES DE OFICINA": "UO",
            "INFORMACION": "INF",
            "VARIOS": "V"
        }

        if selected_format in format_mapping:
            self.lineEdit_5.setText(format_mapping[selected_format])
        else:
            self.lineEdit_5.setText("")


    def show_popup(self):
        self.registrar = BuscarDirigente(self.menu_contabilidad, self.engine)
        self.menu_contabilidad.layout.addWidget(self.registrar)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        self.close()

    def load(self):
        self.dateEdit.setDate(QDate.currentDate())
        self.llenarComboBox()


    def llenarComboBox(self):
        self.comboBox.addItem("ACTIVO FIJO")
        self.comboBox.addItem("ADMINISTRATIVO")
        self.comboBox.addItem("ALQUILER")
        self.comboBox.addItem("APORTE AFILIADOS")
        self.comboBox.addItem("APORTE CONVENIO COLECTIVO")
        self.comboBox.addItem("APOYO SINDICAL")
        self.comboBox.addItem("ASESORIA")
        self.comboBox.addItem("BENEFICIO CONVENIO COLECTIVO")
        self.comboBox.addItem("BREAK")
        self.comboBox.addItem("CAJA CHICA")
        self.comboBox.addItem("CAPACITACION")
        self.comboBox.addItem("CARGO X ITF")
        self.comboBox.addItem("CTA 1 CAJA PIURA")
        self.comboBox.addItem("FALLECIMIENTO")
        self.comboBox.addItem("INTERESES GANADOS")
        self.comboBox.addItem("LIMPIEZA")
        self.comboBox.addItem("OBSEQUIO")
        self.comboBox.addItem("SERVICIO")
        self.comboBox.addItem("UTILES DE OFICINA")
        self.comboBox.addItem("OTROS")
        
        self.comboBox.currentIndexChanged.connect(self.on_comboBox_changed)
        
        self.on_comboBox_changed()

    def on_comboBox_changed(self):
        self.comboBox_2.clear()
        
        selected_category = self.comboBox.currentText()
        
        if selected_category == "ACTIVO FIJO":
            self.comboBox_2.addItem("INVENTARIO")
            self.comboBox_2.addItem("ACCESORIOS PC")
            self.comboBox_2.addItem("ACTIVO FIJO")
            self.comboBox_2.addItem("CAMARA DE SEGURIDAD")
        elif selected_category == "ADMINISTRATIVO":
            self.comboBox_2.addItem("ASESORIA ABOGADO")
            self.comboBox_2.addItem("ASESORIA CONTABILIDAD")
            self.comboBox_2.addItem("ASESORIA ECONOMISTA")
            self.comboBox_2.addItem("LICENCIA SINDICAL")
            self.comboBox_2.addItem("MOVILIDAD")
            self.comboBox_2.addItem("SECRETARIA")
            self.comboBox_2.addItem("OTROS")
        elif selected_category == "ALQUILER":
            self.comboBox_2.addItem("ALQUILER DE LOCAL ASAMBLEA")
            self.comboBox_2.addItem("ALQUILER DE OFICINA")
        elif selected_category == "APORTE AFILIADOS":
            self.comboBox_2.addItem("APORTE SINDICAL")
            self.comboBox_2.addItem("BENEFICIO COLECTIVO")
        elif selected_category == "APORTE CONVENIO COLECTIVO":
            self.comboBox_2.addItem("APORTE SINDICAL")
            self.comboBox_2.addItem("BENEFICIO COLECTIVO")
        elif selected_category == "APOYO SINDICAL":
            self.comboBox_2.addItem("APOYO SINDICAL")
            self.comboBox_2.addItem("DIA DE LA MADRE")
            self.comboBox_2.addItem("FALLECIMIENTO DE FAMILIAR")
            self.comboBox_2.addItem("FESTIVIDADES")
            self.comboBox_2.addItem("HIPERMERCADOS TOTTUS S.A.")
        elif selected_category == "ASESORIA":
            self.comboBox_2.addItem("LEGAL - LABORAL")
            self.comboBox_2.addItem("LEGAL - LABORAL (PRESTAMO)")
        elif selected_category == "BENEFICIO CONVENIO COLECTIVO":
            self.comboBox_2.addItem("AGUINALDO NAVIDEÑO")
            self.comboBox_2.addItem("ESCOLARIDAD 2023 - 2024")
            self.comboBox_2.addItem("QUINQUENIO 2023")
            self.comboBox_2.addItem("QUINQUENIO 2024")
        elif selected_category == "BREAK":
            self.comboBox_2.addItem("CONSUMO DIRIGENTES")
            self.comboBox_2.addItem("CONSUMO REUNION DIRIGENTES")
            self.comboBox_2.addItem("LICENCIA SINDICAL")
            self.comboBox_2.addItem("PASAJES Y BREAK")
            self.comboBox_2.addItem("REUNION CUENTA FISCALIZADORA")
            self.comboBox_2.addItem("REUNION DE DIRIGENTES")
            self.comboBox_2.addItem("VIATICOS DIRIGENTES")
        elif selected_category == "CAJA CHICA":
            self.comboBox_2.addItem("SALDO 2022")
            self.comboBox_2.addItem("VIATICOS")
        elif selected_category == "CAPACITACION":
            self.comboBox_2.addItem("CAPACITACION")
            self.comboBox_2.addItem("SUSCRIPCIONES (CARLHEY)")
        elif selected_category == "CARGO X ITF":
            self.comboBox_2.addItem("CAPACITACION")
            self.comboBox_2.addItem("CARGOS BANCARIOS")
        elif selected_category == "CTA 1 CAJA PIURA":
            self.comboBox_2.addItem("SALDO 2022")
        elif selected_category == "DEVOLUCION":  
            self.comboBox_2.addItem("DESCUENTO 10% RETRIBUCION")
            self.comboBox_2.addItem("DEVOLUCION")
            self.comboBox_2.addItem("DEVOLUCION MULTA")
            self.comboBox_2.addItem("DEVOLUCION MULTAS")
            self.comboBox_2.addItem("DEVOLUCION X ERROR")
        elif selected_category == "FALLECIMIENTO":
            self.comboBox_2.addItem("FALLECIMIENTO DE FAMILIAR")
        elif selected_category == "INTERESES GANADOS":
            self.comboBox_2.addItem("CARGO BANCARIO")
            self.comboBox_2.addItem("INTERESES GANADOS")
        elif selected_category == "LIMPIEZA":
            self.comboBox_2.addItem("LIMPIEZA DE LOCAL")
            self.comboBox_2.addItem("LIMPIEZA DE OFICINA")
        elif selected_category == "OBSEQUIO":
            self.comboBox_2.addItem("OBSEQUIO")
        elif selected_category == "SERVICIO":
            self.comboBox_2.addItem("BASE DE DATOS (NUBE)")
            self.comboBox_2.addItem("CELULAR BITEL")
            self.comboBox_2.addItem("DESARROLLO DE SISTEMA")
            self.comboBox_2.addItem("INTERNET CLARO")
            self.comboBox_2.addItem("PAGINA WEB")
            self.comboBox_2.addItem("SERVICIO WEB")
        elif selected_category == "UTILES DE OFICINA":
            self.comboBox_2.addItem("UTILES DE LIMPIEZA")
            self.comboBox_2.addItem("UTILES DE OFICINA")
        elif selected_category == "OTROS":
            self.comboBox_2.addItem("INFORMACION")
            self.comboBox_2.addItem("VARIOS")



    def nuevo(self):
        respuesta = QMessageBox.question(self, "Nuevo registro", "¿Desea hacer un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
            self.menu_contabilidad.mostrar_registroRecibos()
        else:
            pass 

    def grabar(self):

        respuesta = QMessageBox.question(self, "Grabar registro", "¿Desea grabar un nuevo registro?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            id = self.lineEdit.text()
            serie = self.lineEdit_4.text()
            formato = self.lineEdit_5.text()
            fecha = self.dateEdit.date().toString("yyyy-MM-dd")
            id_dirigente = self.lineEdit_2.text()
            grupo = self.comboBox.currentText()  
            concepto = self.comboBox_2.currentText().upper()
            cantidad = self.doubleSpinBox.value()
            detalle = self.lineEdit_6.text().upper()
            
            if id_dirigente and concepto:
                id = int(id) if id.isdigit() else None
                recibo = {
                    'id': id,
                    'serie': serie,
                    'formato': formato,
                    'fecha': fecha,
                    'id_dirigente': id_dirigente,
                    'grupo': grupo, 
                    'concepto': concepto,
                    'cantidad': cantidad,
                    'detalle': detalle 
                }

                with self.engine.begin() as conn:
                    if id:
                        update_stmt = text("""
                            UPDATE recibos 
                            SET serie=:serie, formato=:formato, fecha=:fecha, id_dirigente=:id_dirigente, grupo=:grupo, concepto=:concepto, cantidad=:cantidad, detalle=:detalle
                            WHERE id=:id;
                        """)
                        conn.execute(update_stmt, recibo)
                        QMessageBox.information(self, "Éxito", "Se ha editado el recibo correctamente.")
                        self.close()
                    else:
                        insert_stmt = text("""
                            INSERT INTO recibos (serie, formato, fecha, id_dirigente, grupo, concepto, cantidad, detalle)
                            VALUES (:serie, :formato, :fecha, :id_dirigente, :grupo, :concepto, :cantidad, :detalle)
                        """)
                        conn.execute(insert_stmt, recibo)
                        QMessageBox.information(self, "Éxito", "Se ha guardado el recibo correctamente.")
                        self.close()
            else:
                QMessageBox.warning(self, "Advertencia", "Los campos que contienen un (*) son obligatorios.")
        else:
            pass


    def exportarPdf(self):
        if not self.lineEdit.text():
            QMessageBox.warning(self, "Alerta", "Necesita seleccionar un recibo")
        else:
            respuesta = QMessageBox.question(self, "Exportar a PDF", "¿Desea exportar el recibo a PDF?", QMessageBox.Yes | QMessageBox.No)

            if respuesta == QMessageBox.Yes:
                id_recibo = self.lineEdit.text()
                serie = self.lineEdit_4.text()
                formato = self.lineEdit_5.text()
                fecha = self.dateEdit.date().toString("dd-MM-yyyy")
                dirigente = self.lineEdit_3.text()
                grupo = self.comboBox.currentText()  
                detalle = self.comboBox_2.currentText() 
                cantidad = float(self.doubleSpinBox.value())
                concepto = self.lineEdit_6.text()
                cantidadletras = convertir_numero_letras(cantidad)
                fechaletras = convertir_fecha_letras(fecha)

                ruta_actual = os.path.abspath(os.path.dirname(__file__))
                ruta_template = os.path.join(ruta_actual, "..", "utils", "plantilla_registro_recibos.html")

                with open(ruta_template, "r") as archivo_html_template:
                    contenido_template = archivo_html_template.read()
                template = Template(contenido_template)

                html_renderizado = template.render(
                    id_recibo=id_recibo, 
                    serie=serie,
                    formato=formato,
                    fecha=fecha, 
                    dirigente=dirigente, 
                    grupo=grupo, 
                    detalle=detalle,
                    cantidad=cantidad, 
                    concepto=concepto, 
                    cantidadletras=cantidadletras, 
                    fechaletras=fechaletras
                )

                ruta_resultado = os.path.join(ruta_actual, "..", "utils", "registro_recibos.html")
                with open(ruta_resultado, "w") as archivo_html_resultado:
                    archivo_html_resultado.write(html_renderizado)

                dialogo = QFileDialog()
                dialogo.setAcceptMode(QFileDialog.AcceptSave)
                dialogo.setNameFilter("Archivos PDF (*.pdf)")
                dialogo.setDefaultSuffix("pdf")

                nombre_archivo = f"Recibo N°00{id_recibo}.pdf"
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
                    delete_recibos_query = text("DELETE FROM recibos WHERE id = :id")
                    conn.execute(delete_recibos_query, {'id': id})
                    QMessageBox.information(self, "Éxito", "Se ha eliminado el registro correctamente.")
                    self.close()
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

class BuscarDirigente(QMainWindow, Ui_MainWindow_buscarDirigente):
    def __init__(self,menu_contabilidad, engine=None,data=None):
        super().__init__()
        self.setupUi(self)
        self.setWindowFlags(Qt.Window | Qt.CustomizeWindowHint | Qt.WindowTitleHint)

        self.engine = engine
        self.menu_contabilidad = menu_contabilidad

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

        self.registrar = RegistrarRecibos(self.menu_contabilidad, self.engine, data)
        self.registrar.lineEdit_2.setText(data[0])
        self.registrar.lineEdit_3.setText(data[1]+ " "+ data[2])
        self.registrar.dateEdit.setFocus()
        
        self.menu_contabilidad.layout.addWidget(self.registrar)
        self.registrar.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

        self.close()

    def cerrar(self):
        respuesta = QMessageBox.question(self, "Cerrar ventana", "¿Desea cerrar el listado actual?", QMessageBox.Yes | QMessageBox.No)

        if respuesta == QMessageBox.Yes:
            self.close()
        else:
            pass

def convertir_fecha_letras(fecha):
    fecha_datetime = datetime.strptime(fecha, "%d-%m-%Y")
    dia = fecha_datetime.strftime("%d")
    locale.setlocale(locale.LC_ALL, 'es_ES')
    mes = calendar.month_name[int(fecha_datetime.strftime("%m"))]
    anio = fecha_datetime.strftime("%Y")
    fecha_letras = f"{dia} de {mes} de {anio}"
    return fecha_letras

UNIDADES = {
    0: 'CERO',
    1: 'UN',
    2: 'DOS',
    3: 'TRES',
    4: 'CUATRO',
    5: 'CINCO',
    6: 'SEIS',
    7: 'SIETE',
    8: 'OCHO',
    9: 'NUEVE',
    10: 'DIEZ',
    11: 'ONCE',
    12: 'DOCE',
    13: 'TRECE',
    14: 'CATORCE',
    15: 'QUINCE',
    16: 'DIECISÉIS',
    17: 'DIECISIETE',
    18: 'DIECIOCHO',
    19: 'DIECINUEVE',
}

DECENAS = {
    2: 'VEINTE',
    3: 'TREINTA',
    4: 'CUARENTA',
    5: 'CINCUENTA',
    6: 'SESENTA',
    7: 'SETENTA',
    8: 'OCHENTA',
    9: 'NOVENTA',
}

CENTENAS = {
    1: 'CIENTO',
    2: 'DOSCIENTOS',
    3: 'TRESCIENTOS',
    4: 'CUATROCIENTOS',
    5: 'QUINIENTOS',
    6: 'SEISCIENTOS',
    7: 'SETECIENTOS',
    8: 'OCHOCIENTOS',
    9: 'NOVECIENTOS',
}

def convertir_numero_letras(numero):
    numero_entero = int(numero)
    numero_decimal = round(numero - numero_entero, 2) * 100

    letras = ''
    if numero_entero > 0:
        letras += convertir_parte_entera(numero_entero)
        letras += ' NUEVOS SOLES'
    if numero_decimal > 0:
        letras += ' CON '
        letras += convertir_parte_decimal(numero_decimal)
        letras += ' CÉNTIMOS'

    return letras

def convertir_parte_entera(numero):
    if numero == 100:
        return 'CIEN'
    elif numero < 20:
        return UNIDADES[numero]
    elif numero < 100:
        unidades = numero % 10
        decenas = numero // 10
        if unidades > 0:
            return f'{DECENAS[decenas]} Y {UNIDADES[unidades]}'
        else:
            return DECENAS[decenas]
    elif numero < 1000:
        centenas = numero // 100
        resto = numero % 100
        if resto == 0:
            return CENTENAS[centenas]
        else:
            return f'{CENTENAS[centenas]} {convertir_parte_entera(resto)}'
    elif numero < 1000000:
        miles = numero // 1000
        resto = numero % 1000
        if miles == 1:
            miles_letras = 'MIL'
        else:
            miles_letras = f'{convertir_parte_entera(miles)} MIL'
        if resto == 0:
            return miles_letras
        else:
            return f'{miles_letras} {convertir_parte_entera(resto)}'
    else:
        return 'NÚMERO MUY GRANDE'

def convertir_parte_decimal(numero):
    if numero < 20:
        return UNIDADES[int(numero)]
    else:
        unidades = int(numero) % 10
        decenas = int(numero) // 10
        if unidades > 0:
            return f'{DECENAS[decenas]} Y {UNIDADES[unidades]}'
        else:
            return DECENAS[decenas]