# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'menu_registrosWQJYla.ui'
##
## Created by: Qt User Interface Compiler version 6.4.3
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide6.QtCore import (QCoreApplication, QDate, QDateTime, QLocale,
    QMetaObject, QObject, QPoint, QRect,
    QSize, QTime, QUrl, Qt)
from PySide6.QtGui import (QAction, QBrush, QColor, QConicalGradient,
    QCursor, QFont, QFontDatabase, QGradient,
    QIcon, QImage, QKeySequence, QLinearGradient,
    QPainter, QPalette, QPixmap, QRadialGradient,
    QTransform)
from PySide6.QtWidgets import (QApplication, QMainWindow, QMenu, QMenuBar,
    QSizePolicy, QStatusBar, QWidget)

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        if not MainWindow.objectName():
            MainWindow.setObjectName(u"MainWindow")
        MainWindow.resize(1366, 730)
        palette = QPalette()
        brush = QBrush(QColor(0, 0, 0, 255))
        brush.setStyle(Qt.SolidPattern)
        palette.setBrush(QPalette.Active, QPalette.WindowText, brush)
        brush1 = QBrush(QColor(208, 208, 208, 255))
        brush1.setStyle(Qt.SolidPattern)
        palette.setBrush(QPalette.Active, QPalette.Button, brush1)
        brush2 = QBrush(QColor(255, 255, 255, 255))
        brush2.setStyle(Qt.SolidPattern)
        palette.setBrush(QPalette.Active, QPalette.Light, brush2)
        brush3 = QBrush(QColor(231, 231, 231, 255))
        brush3.setStyle(Qt.SolidPattern)
        palette.setBrush(QPalette.Active, QPalette.Midlight, brush3)
        brush4 = QBrush(QColor(104, 104, 104, 255))
        brush4.setStyle(Qt.SolidPattern)
        palette.setBrush(QPalette.Active, QPalette.Dark, brush4)
        brush5 = QBrush(QColor(139, 139, 139, 255))
        brush5.setStyle(Qt.SolidPattern)
        palette.setBrush(QPalette.Active, QPalette.Mid, brush5)
        palette.setBrush(QPalette.Active, QPalette.Text, brush)
        palette.setBrush(QPalette.Active, QPalette.BrightText, brush2)
        palette.setBrush(QPalette.Active, QPalette.ButtonText, brush)
        palette.setBrush(QPalette.Active, QPalette.Base, brush2)
        palette.setBrush(QPalette.Active, QPalette.Window, brush1)
        palette.setBrush(QPalette.Active, QPalette.Shadow, brush)
        palette.setBrush(QPalette.Active, QPalette.AlternateBase, brush3)
        brush6 = QBrush(QColor(255, 255, 220, 255))
        brush6.setStyle(Qt.SolidPattern)
        palette.setBrush(QPalette.Active, QPalette.ToolTipBase, brush6)
        palette.setBrush(QPalette.Active, QPalette.ToolTipText, brush)
        brush7 = QBrush(QColor(0, 0, 0, 128))
        brush7.setStyle(Qt.SolidPattern)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette.setBrush(QPalette.Active, QPalette.PlaceholderText, brush7)
#endif
        palette.setBrush(QPalette.Inactive, QPalette.WindowText, brush)
        palette.setBrush(QPalette.Inactive, QPalette.Button, brush1)
        palette.setBrush(QPalette.Inactive, QPalette.Light, brush2)
        palette.setBrush(QPalette.Inactive, QPalette.Midlight, brush3)
        palette.setBrush(QPalette.Inactive, QPalette.Dark, brush4)
        palette.setBrush(QPalette.Inactive, QPalette.Mid, brush5)
        palette.setBrush(QPalette.Inactive, QPalette.Text, brush)
        palette.setBrush(QPalette.Inactive, QPalette.BrightText, brush2)
        palette.setBrush(QPalette.Inactive, QPalette.ButtonText, brush)
        palette.setBrush(QPalette.Inactive, QPalette.Base, brush2)
        palette.setBrush(QPalette.Inactive, QPalette.Window, brush1)
        palette.setBrush(QPalette.Inactive, QPalette.Shadow, brush)
        palette.setBrush(QPalette.Inactive, QPalette.AlternateBase, brush3)
        palette.setBrush(QPalette.Inactive, QPalette.ToolTipBase, brush6)
        palette.setBrush(QPalette.Inactive, QPalette.ToolTipText, brush)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette.setBrush(QPalette.Inactive, QPalette.PlaceholderText, brush7)
#endif
        palette.setBrush(QPalette.Disabled, QPalette.WindowText, brush4)
        palette.setBrush(QPalette.Disabled, QPalette.Button, brush1)
        palette.setBrush(QPalette.Disabled, QPalette.Light, brush2)
        palette.setBrush(QPalette.Disabled, QPalette.Midlight, brush3)
        palette.setBrush(QPalette.Disabled, QPalette.Dark, brush4)
        palette.setBrush(QPalette.Disabled, QPalette.Mid, brush5)
        palette.setBrush(QPalette.Disabled, QPalette.Text, brush4)
        palette.setBrush(QPalette.Disabled, QPalette.BrightText, brush2)
        palette.setBrush(QPalette.Disabled, QPalette.ButtonText, brush4)
        palette.setBrush(QPalette.Disabled, QPalette.Base, brush1)
        palette.setBrush(QPalette.Disabled, QPalette.Window, brush1)
        palette.setBrush(QPalette.Disabled, QPalette.Shadow, brush)
        palette.setBrush(QPalette.Disabled, QPalette.AlternateBase, brush1)
        palette.setBrush(QPalette.Disabled, QPalette.ToolTipBase, brush6)
        palette.setBrush(QPalette.Disabled, QPalette.ToolTipText, brush)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette.setBrush(QPalette.Disabled, QPalette.PlaceholderText, brush7)
#endif
        MainWindow.setPalette(palette)
        font = QFont()
        font.setFamilies([u"Verdana"])
        font.setPointSize(10)
        font.setBold(True)
        MainWindow.setFont(font)
        self.actionAfiliados = QAction(MainWindow)
        self.actionAfiliados.setObjectName(u"actionAfiliados")
        self.actionEscolaridad = QAction(MainWindow)
        self.actionEscolaridad.setObjectName(u"actionEscolaridad")
        self.actionDirigentes = QAction(MainWindow)
        self.actionDirigentes.setObjectName(u"actionDirigentes")
        self.actionAsistencias = QAction(MainWindow)
        self.actionAsistencias.setObjectName(u"actionAsistencias")
        self.actionRecibo = QAction(MainWindow)
        self.actionRecibo.setObjectName(u"actionRecibo")
        font1 = QFont()
        font1.setPointSize(10)
        font1.setBold(True)
        self.actionRecibo.setFont(font1)
        self.actionControl_de_inventario = QAction(MainWindow)
        self.actionControl_de_inventario.setObjectName(u"actionControl_de_inventario")
        self.actionAfiliado = QAction(MainWindow)
        self.actionAfiliado.setObjectName(u"actionAfiliado")
        self.actionCuota = QAction(MainWindow)
        self.actionCuota.setObjectName(u"actionCuota")
        self.actionCuota.setFont(font1)
        self.actionIngresos_y_Egresos = QAction(MainWindow)
        self.actionIngresos_y_Egresos.setObjectName(u"actionIngresos_y_Egresos")
        self.actionEscolaridad_2 = QAction(MainWindow)
        self.actionEscolaridad_2.setObjectName(u"actionEscolaridad_2")
        self.actionAsistencias_2 = QAction(MainWindow)
        self.actionAsistencias_2.setObjectName(u"actionAsistencias_2")
        self.actionLista_de_Afiliados = QAction(MainWindow)
        self.actionLista_de_Afiliados.setObjectName(u"actionLista_de_Afiliados")
        self.actionLista_de_Afiliados.setFont(font)
        self.actionRegistro_de_Afiliados = QAction(MainWindow)
        self.actionRegistro_de_Afiliados.setObjectName(u"actionRegistro_de_Afiliados")
        self.actionRegistro_de_Afiliados.setFont(font)
        self.actionLista_de_Dirigentes = QAction(MainWindow)
        self.actionLista_de_Dirigentes.setObjectName(u"actionLista_de_Dirigentes")
        self.actionLista_de_Dirigentes.setFont(font)
        self.actionRegistro_de_Dirigentes = QAction(MainWindow)
        self.actionRegistro_de_Dirigentes.setObjectName(u"actionRegistro_de_Dirigentes")
        self.actionRegistro_de_Dirigentes.setFont(font)
        self.actionLista_de_Recibos = QAction(MainWindow)
        self.actionLista_de_Recibos.setObjectName(u"actionLista_de_Recibos")
        self.actionLista_de_Recibos.setFont(font)
        self.actionRegistro_de_Recibos = QAction(MainWindow)
        self.actionRegistro_de_Recibos.setObjectName(u"actionRegistro_de_Recibos")
        self.actionRegistro_de_Recibos.setFont(font)
        self.actionLista_de_escolaridades = QAction(MainWindow)
        self.actionLista_de_escolaridades.setObjectName(u"actionLista_de_escolaridades")
        self.actionLista_de_escolaridades.setFont(font)
        self.actionRegistro_de_Escolaridades = QAction(MainWindow)
        self.actionRegistro_de_Escolaridades.setObjectName(u"actionRegistro_de_Escolaridades")
        self.actionRegistro_de_Escolaridades.setFont(font)
        self.actionLista_de_Asistencias = QAction(MainWindow)
        self.actionLista_de_Asistencias.setObjectName(u"actionLista_de_Asistencias")
        self.actionLista_de_Asistencias.setFont(font)
        self.actionRegistro_de_Asistencias = QAction(MainWindow)
        self.actionRegistro_de_Asistencias.setObjectName(u"actionRegistro_de_Asistencias")
        self.actionRegistro_de_Asistencias.setFont(font)
        self.actionLista_de_Inventario = QAction(MainWindow)
        self.actionLista_de_Inventario.setObjectName(u"actionLista_de_Inventario")
        self.actionLista_de_Inventario.setFont(font)
        self.actionRegistro_de_Inventario = QAction(MainWindow)
        self.actionRegistro_de_Inventario.setObjectName(u"actionRegistro_de_Inventario")
        self.actionRegistro_de_Inventario.setFont(font)
        self.actionLista_de_Cuotas = QAction(MainWindow)
        self.actionLista_de_Cuotas.setObjectName(u"actionLista_de_Cuotas")
        self.actionLista_de_Cuotas.setFont(font)
        self.actionRegistro_de_Cuotas = QAction(MainWindow)
        self.actionRegistro_de_Cuotas.setObjectName(u"actionRegistro_de_Cuotas")
        self.actionRegistro_de_Cuotas.setFont(font)
        self.actionLista_de_Ingresos_y_Egresos = QAction(MainWindow)
        self.actionLista_de_Ingresos_y_Egresos.setObjectName(u"actionLista_de_Ingresos_y_Egresos")
        self.actionLista_de_Ingresos_y_Egresos.setFont(font)
        self.actionRegistro_de_Ingresos_y_Egresos = QAction(MainWindow)
        self.actionRegistro_de_Ingresos_y_Egresos.setObjectName(u"actionRegistro_de_Ingresos_y_Egresos")
        self.actionRegistro_de_Ingresos_y_Egresos.setFont(font)
        self.actionLista_de_Licencias = QAction(MainWindow)
        self.actionLista_de_Licencias.setObjectName(u"actionLista_de_Licencias")
        self.actionLista_de_Licencias.setFont(font)
        self.actionRegistro_de_Licencias = QAction(MainWindow)
        self.actionRegistro_de_Licencias.setObjectName(u"actionRegistro_de_Licencias")
        self.actionRegistro_de_Licencias.setFont(font)
        self.actionRegisitro_de_Asamblea = QAction(MainWindow)
        self.actionRegisitro_de_Asamblea.setObjectName(u"actionRegisitro_de_Asamblea")
        self.actionRegisitro_de_Asamblea.setFont(font)
        self.actionIr_al_Men = QAction(MainWindow)
        self.actionIr_al_Men.setObjectName(u"actionIr_al_Men")
        self.actionIr_al_Men.setFont(font)
        self.centralwidget = QWidget(MainWindow)
        self.centralwidget.setObjectName(u"centralwidget")
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QMenuBar(MainWindow)
        self.menubar.setObjectName(u"menubar")
        self.menubar.setGeometry(QRect(0, 0, 1366, 22))
        self.menuAfiliados = QMenu(self.menubar)
        self.menuAfiliados.setObjectName(u"menuAfiliados")
        self.menuDirigentes = QMenu(self.menubar)
        self.menuDirigentes.setObjectName(u"menuDirigentes")
        self.menuLicencias = QMenu(self.menubar)
        self.menuLicencias.setObjectName(u"menuLicencias")
        self.menuAsistencias = QMenu(self.menubar)
        self.menuAsistencias.setObjectName(u"menuAsistencias")
        self.menuInventario = QMenu(self.menubar)
        self.menuInventario.setObjectName(u"menuInventario")
        self.menuSalir = QMenu(self.menubar)
        self.menuSalir.setObjectName(u"menuSalir")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QStatusBar(MainWindow)
        self.statusbar.setObjectName(u"statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.menubar.addAction(self.menuAfiliados.menuAction())
        self.menubar.addAction(self.menuAsistencias.menuAction())
        self.menubar.addAction(self.menuDirigentes.menuAction())
        self.menubar.addAction(self.menuInventario.menuAction())
        self.menubar.addAction(self.menuLicencias.menuAction())
        self.menubar.addAction(self.menuSalir.menuAction())
        self.menuAfiliados.addAction(self.actionLista_de_Afiliados)
        self.menuAfiliados.addAction(self.actionRegistro_de_Afiliados)
        self.menuDirigentes.addAction(self.actionLista_de_Dirigentes)
        self.menuDirigentes.addAction(self.actionRegistro_de_Dirigentes)
        self.menuLicencias.addAction(self.actionLista_de_Licencias)
        self.menuLicencias.addAction(self.actionRegistro_de_Licencias)
        self.menuAsistencias.addAction(self.actionLista_de_Asistencias)
        self.menuAsistencias.addAction(self.actionRegistro_de_Asistencias)
        self.menuAsistencias.addAction(self.actionRegisitro_de_Asamblea)
        self.menuInventario.addAction(self.actionLista_de_Inventario)
        self.menuInventario.addAction(self.actionRegistro_de_Inventario)
        self.menuSalir.addAction(self.actionIr_al_Men)

        self.retranslateUi(MainWindow)

        QMetaObject.connectSlotsByName(MainWindow)
    # setupUi

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QCoreApplication.translate("MainWindow", u"Menu Registros", None))
        self.actionAfiliados.setText(QCoreApplication.translate("MainWindow", u"Afiliados", None))
        self.actionEscolaridad.setText(QCoreApplication.translate("MainWindow", u"Escolaridad", None))
        self.actionDirigentes.setText(QCoreApplication.translate("MainWindow", u"Dirigentes", None))
        self.actionAsistencias.setText(QCoreApplication.translate("MainWindow", u"Asistencias", None))
        self.actionRecibo.setText(QCoreApplication.translate("MainWindow", u"Lista de Dirigentes", None))
        self.actionControl_de_inventario.setText(QCoreApplication.translate("MainWindow", u"Control de inventario", None))
        self.actionAfiliado.setText(QCoreApplication.translate("MainWindow", u"Afiliado", None))
        self.actionCuota.setText(QCoreApplication.translate("MainWindow", u"Registro de Dirigentes", None))
        self.actionIngresos_y_Egresos.setText(QCoreApplication.translate("MainWindow", u"Ingresos  y Egresos", None))
        self.actionEscolaridad_2.setText(QCoreApplication.translate("MainWindow", u"Escolaridad", None))
        self.actionAsistencias_2.setText(QCoreApplication.translate("MainWindow", u"Asistencias", None))
        self.actionLista_de_Afiliados.setText(QCoreApplication.translate("MainWindow", u"Lista de Afiliados", None))
        self.actionRegistro_de_Afiliados.setText(QCoreApplication.translate("MainWindow", u"Registro de Afiliados", None))
        self.actionLista_de_Dirigentes.setText(QCoreApplication.translate("MainWindow", u"Lista de Dirigentes", None))
        self.actionRegistro_de_Dirigentes.setText(QCoreApplication.translate("MainWindow", u"Registro de Dirigentes", None))
        self.actionLista_de_Recibos.setText(QCoreApplication.translate("MainWindow", u"Lista de Recibos", None))
        self.actionRegistro_de_Recibos.setText(QCoreApplication.translate("MainWindow", u"Registro de Recibos", None))
        self.actionLista_de_escolaridades.setText(QCoreApplication.translate("MainWindow", u"Lista de Escolaridades", None))
        self.actionRegistro_de_Escolaridades.setText(QCoreApplication.translate("MainWindow", u"Registro de Escolaridades", None))
        self.actionLista_de_Asistencias.setText(QCoreApplication.translate("MainWindow", u"Lista de Asistencias", None))
        self.actionRegistro_de_Asistencias.setText(QCoreApplication.translate("MainWindow", u"Registro de Asistencias", None))
        self.actionLista_de_Inventario.setText(QCoreApplication.translate("MainWindow", u"Lista de Inventario", None))
        self.actionRegistro_de_Inventario.setText(QCoreApplication.translate("MainWindow", u"Registro de Inventario", None))
        self.actionLista_de_Cuotas.setText(QCoreApplication.translate("MainWindow", u"Lista de Cuotas", None))
        self.actionRegistro_de_Cuotas.setText(QCoreApplication.translate("MainWindow", u"Registro de Cuotas", None))
        self.actionLista_de_Ingresos_y_Egresos.setText(QCoreApplication.translate("MainWindow", u"Lista de Ingresos y Egresos", None))
        self.actionRegistro_de_Ingresos_y_Egresos.setText(QCoreApplication.translate("MainWindow", u"Registro de Ingresos y Egresos", None))
        self.actionLista_de_Licencias.setText(QCoreApplication.translate("MainWindow", u"Lista de Licencias", None))
        self.actionRegistro_de_Licencias.setText(QCoreApplication.translate("MainWindow", u"Registro de Licencias", None))
        self.actionRegisitro_de_Asamblea.setText(QCoreApplication.translate("MainWindow", u"Regisitro de Asamblea", None))
        self.actionIr_al_Men.setText(QCoreApplication.translate("MainWindow", u"Ir al Men\u00fa", None))
        self.menuAfiliados.setTitle(QCoreApplication.translate("MainWindow", u"Afiliados", None))
        self.menuDirigentes.setTitle(QCoreApplication.translate("MainWindow", u"Dirigentes", None))
        self.menuLicencias.setTitle(QCoreApplication.translate("MainWindow", u"Licencias", None))
        self.menuAsistencias.setTitle(QCoreApplication.translate("MainWindow", u"Asistencias", None))
        self.menuInventario.setTitle(QCoreApplication.translate("MainWindow", u"Inventario", None))
        self.menuSalir.setTitle(QCoreApplication.translate("MainWindow", u"Salir", None))
    # retranslateUi

