# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'registro_dirigentesvXhqBZ.ui'
##
## Created by: Qt User Interface Compiler version 6.5.1
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
from PySide6.QtWidgets import (QAbstractSpinBox, QApplication, QComboBox, QDateEdit,
    QDateTimeEdit, QGroupBox, QLabel, QLineEdit,
    QMainWindow, QMenuBar, QSizePolicy, QSpinBox,
    QStatusBar, QToolBar, QWidget)
import resources_rc

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        if not MainWindow.objectName():
            MainWindow.setObjectName(u"MainWindow")
        MainWindow.resize(1366, 768)
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
        self.actionNuevo = QAction(MainWindow)
        self.actionNuevo.setObjectName(u"actionNuevo")
        icon = QIcon()
        icon.addFile(u":/icons/resources/icons/nuevo.png", QSize(), QIcon.Normal, QIcon.Off)
        self.actionNuevo.setIcon(icon)
        self.actionEliminar = QAction(MainWindow)
        self.actionEliminar.setObjectName(u"actionEliminar")
        icon1 = QIcon()
        icon1.addFile(u":/icons/resources/icons/eliminar.png", QSize(), QIcon.Normal, QIcon.Off)
        self.actionEliminar.setIcon(icon1)
        self.actionGrabar = QAction(MainWindow)
        self.actionGrabar.setObjectName(u"actionGrabar")
        icon2 = QIcon()
        icon2.addFile(u":/icons/resources/icons/grabar.png", QSize(), QIcon.Normal, QIcon.Off)
        self.actionGrabar.setIcon(icon2)
        self.actionImprimir = QAction(MainWindow)
        self.actionImprimir.setObjectName(u"actionImprimir")
        icon3 = QIcon()
        icon3.addFile(u":/icons/resources/icons/imprimir.png", QSize(), QIcon.Normal, QIcon.Off)
        self.actionImprimir.setIcon(icon3)
        self.actionSalir = QAction(MainWindow)
        self.actionSalir.setObjectName(u"actionSalir")
        icon4 = QIcon()
        icon4.addFile(u":/icons/resources/icons/salir.png", QSize(), QIcon.Normal, QIcon.Off)
        self.actionSalir.setIcon(icon4)
        self.centralwidget = QWidget(MainWindow)
        self.centralwidget.setObjectName(u"centralwidget")
        self.groupBox = QGroupBox(self.centralwidget)
        self.groupBox.setObjectName(u"groupBox")
        self.groupBox.setGeometry(QRect(24, 40, 451, 131))
        palette1 = QPalette()
        palette1.setBrush(QPalette.Active, QPalette.WindowText, brush)
        brush8 = QBrush(QColor(180, 180, 180, 255))
        brush8.setStyle(Qt.SolidPattern)
        palette1.setBrush(QPalette.Active, QPalette.Button, brush8)
        palette1.setBrush(QPalette.Active, QPalette.Light, brush2)
        brush9 = QBrush(QColor(217, 217, 217, 255))
        brush9.setStyle(Qt.SolidPattern)
        palette1.setBrush(QPalette.Active, QPalette.Midlight, brush9)
        brush10 = QBrush(QColor(90, 90, 90, 255))
        brush10.setStyle(Qt.SolidPattern)
        palette1.setBrush(QPalette.Active, QPalette.Dark, brush10)
        brush11 = QBrush(QColor(120, 120, 120, 255))
        brush11.setStyle(Qt.SolidPattern)
        palette1.setBrush(QPalette.Active, QPalette.Mid, brush11)
        palette1.setBrush(QPalette.Active, QPalette.Text, brush)
        palette1.setBrush(QPalette.Active, QPalette.BrightText, brush2)
        palette1.setBrush(QPalette.Active, QPalette.ButtonText, brush)
        palette1.setBrush(QPalette.Active, QPalette.Base, brush2)
        palette1.setBrush(QPalette.Active, QPalette.Window, brush8)
        palette1.setBrush(QPalette.Active, QPalette.Shadow, brush)
        palette1.setBrush(QPalette.Active, QPalette.AlternateBase, brush9)
        palette1.setBrush(QPalette.Active, QPalette.ToolTipBase, brush6)
        palette1.setBrush(QPalette.Active, QPalette.ToolTipText, brush)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette1.setBrush(QPalette.Active, QPalette.PlaceholderText, brush7)
#endif
        palette1.setBrush(QPalette.Inactive, QPalette.WindowText, brush)
        palette1.setBrush(QPalette.Inactive, QPalette.Button, brush8)
        palette1.setBrush(QPalette.Inactive, QPalette.Light, brush2)
        palette1.setBrush(QPalette.Inactive, QPalette.Midlight, brush9)
        palette1.setBrush(QPalette.Inactive, QPalette.Dark, brush10)
        palette1.setBrush(QPalette.Inactive, QPalette.Mid, brush11)
        palette1.setBrush(QPalette.Inactive, QPalette.Text, brush)
        palette1.setBrush(QPalette.Inactive, QPalette.BrightText, brush2)
        palette1.setBrush(QPalette.Inactive, QPalette.ButtonText, brush)
        palette1.setBrush(QPalette.Inactive, QPalette.Base, brush2)
        palette1.setBrush(QPalette.Inactive, QPalette.Window, brush8)
        palette1.setBrush(QPalette.Inactive, QPalette.Shadow, brush)
        palette1.setBrush(QPalette.Inactive, QPalette.AlternateBase, brush9)
        palette1.setBrush(QPalette.Inactive, QPalette.ToolTipBase, brush6)
        palette1.setBrush(QPalette.Inactive, QPalette.ToolTipText, brush)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette1.setBrush(QPalette.Inactive, QPalette.PlaceholderText, brush7)
#endif
        palette1.setBrush(QPalette.Disabled, QPalette.WindowText, brush10)
        palette1.setBrush(QPalette.Disabled, QPalette.Button, brush8)
        palette1.setBrush(QPalette.Disabled, QPalette.Light, brush2)
        palette1.setBrush(QPalette.Disabled, QPalette.Midlight, brush9)
        palette1.setBrush(QPalette.Disabled, QPalette.Dark, brush10)
        palette1.setBrush(QPalette.Disabled, QPalette.Mid, brush11)
        palette1.setBrush(QPalette.Disabled, QPalette.Text, brush10)
        palette1.setBrush(QPalette.Disabled, QPalette.BrightText, brush2)
        palette1.setBrush(QPalette.Disabled, QPalette.ButtonText, brush10)
        palette1.setBrush(QPalette.Disabled, QPalette.Base, brush8)
        palette1.setBrush(QPalette.Disabled, QPalette.Window, brush8)
        palette1.setBrush(QPalette.Disabled, QPalette.Shadow, brush)
        palette1.setBrush(QPalette.Disabled, QPalette.AlternateBase, brush8)
        palette1.setBrush(QPalette.Disabled, QPalette.ToolTipBase, brush6)
        palette1.setBrush(QPalette.Disabled, QPalette.ToolTipText, brush)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette1.setBrush(QPalette.Disabled, QPalette.PlaceholderText, brush7)
#endif
        self.groupBox.setPalette(palette1)
        self.groupBox.setFont(font)
        self.groupBox.setAutoFillBackground(True)
        self.label_2 = QLabel(self.groupBox)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setGeometry(QRect(30, 30, 71, 16))
        self.label_4 = QLabel(self.groupBox)
        self.label_4.setObjectName(u"label_4")
        self.label_4.setGeometry(QRect(30, 60, 71, 16))
        self.label_6 = QLabel(self.groupBox)
        self.label_6.setObjectName(u"label_6")
        self.label_6.setGeometry(QRect(30, 90, 71, 16))
        self.lineEdit_2 = QLineEdit(self.groupBox)
        self.lineEdit_2.setObjectName(u"lineEdit_2")
        self.lineEdit_2.setGeometry(QRect(117, 26, 321, 20))
        self.lineEdit_3 = QLineEdit(self.groupBox)
        self.lineEdit_3.setObjectName(u"lineEdit_3")
        self.lineEdit_3.setGeometry(QRect(116, 57, 321, 20))
        self.lineEdit_4 = QLineEdit(self.groupBox)
        self.lineEdit_4.setObjectName(u"lineEdit_4")
        self.lineEdit_4.setGeometry(QRect(117, 90, 321, 20))
        self.groupBox_2 = QGroupBox(self.centralwidget)
        self.groupBox_2.setObjectName(u"groupBox_2")
        self.groupBox_2.setGeometry(QRect(24, 190, 451, 131))
        palette2 = QPalette()
        palette2.setBrush(QPalette.Active, QPalette.WindowText, brush)
        palette2.setBrush(QPalette.Active, QPalette.Button, brush8)
        palette2.setBrush(QPalette.Active, QPalette.Light, brush2)
        palette2.setBrush(QPalette.Active, QPalette.Midlight, brush9)
        palette2.setBrush(QPalette.Active, QPalette.Dark, brush10)
        palette2.setBrush(QPalette.Active, QPalette.Mid, brush11)
        palette2.setBrush(QPalette.Active, QPalette.Text, brush)
        palette2.setBrush(QPalette.Active, QPalette.BrightText, brush2)
        palette2.setBrush(QPalette.Active, QPalette.ButtonText, brush)
        palette2.setBrush(QPalette.Active, QPalette.Base, brush2)
        palette2.setBrush(QPalette.Active, QPalette.Window, brush8)
        palette2.setBrush(QPalette.Active, QPalette.Shadow, brush)
        palette2.setBrush(QPalette.Active, QPalette.AlternateBase, brush9)
        palette2.setBrush(QPalette.Active, QPalette.ToolTipBase, brush6)
        palette2.setBrush(QPalette.Active, QPalette.ToolTipText, brush)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette2.setBrush(QPalette.Active, QPalette.PlaceholderText, brush7)
#endif
        palette2.setBrush(QPalette.Inactive, QPalette.WindowText, brush)
        palette2.setBrush(QPalette.Inactive, QPalette.Button, brush8)
        palette2.setBrush(QPalette.Inactive, QPalette.Light, brush2)
        palette2.setBrush(QPalette.Inactive, QPalette.Midlight, brush9)
        palette2.setBrush(QPalette.Inactive, QPalette.Dark, brush10)
        palette2.setBrush(QPalette.Inactive, QPalette.Mid, brush11)
        palette2.setBrush(QPalette.Inactive, QPalette.Text, brush)
        palette2.setBrush(QPalette.Inactive, QPalette.BrightText, brush2)
        palette2.setBrush(QPalette.Inactive, QPalette.ButtonText, brush)
        palette2.setBrush(QPalette.Inactive, QPalette.Base, brush2)
        palette2.setBrush(QPalette.Inactive, QPalette.Window, brush8)
        palette2.setBrush(QPalette.Inactive, QPalette.Shadow, brush)
        palette2.setBrush(QPalette.Inactive, QPalette.AlternateBase, brush9)
        palette2.setBrush(QPalette.Inactive, QPalette.ToolTipBase, brush6)
        palette2.setBrush(QPalette.Inactive, QPalette.ToolTipText, brush)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette2.setBrush(QPalette.Inactive, QPalette.PlaceholderText, brush7)
#endif
        palette2.setBrush(QPalette.Disabled, QPalette.WindowText, brush10)
        palette2.setBrush(QPalette.Disabled, QPalette.Button, brush8)
        palette2.setBrush(QPalette.Disabled, QPalette.Light, brush2)
        palette2.setBrush(QPalette.Disabled, QPalette.Midlight, brush9)
        palette2.setBrush(QPalette.Disabled, QPalette.Dark, brush10)
        palette2.setBrush(QPalette.Disabled, QPalette.Mid, brush11)
        palette2.setBrush(QPalette.Disabled, QPalette.Text, brush10)
        palette2.setBrush(QPalette.Disabled, QPalette.BrightText, brush2)
        palette2.setBrush(QPalette.Disabled, QPalette.ButtonText, brush10)
        palette2.setBrush(QPalette.Disabled, QPalette.Base, brush8)
        palette2.setBrush(QPalette.Disabled, QPalette.Window, brush8)
        palette2.setBrush(QPalette.Disabled, QPalette.Shadow, brush)
        palette2.setBrush(QPalette.Disabled, QPalette.AlternateBase, brush8)
        palette2.setBrush(QPalette.Disabled, QPalette.ToolTipBase, brush6)
        palette2.setBrush(QPalette.Disabled, QPalette.ToolTipText, brush)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette2.setBrush(QPalette.Disabled, QPalette.PlaceholderText, brush7)
#endif
        self.groupBox_2.setPalette(palette2)
        self.groupBox_2.setFont(font)
        self.groupBox_2.setAutoFillBackground(True)
        self.label_7 = QLabel(self.groupBox_2)
        self.label_7.setObjectName(u"label_7")
        self.label_7.setGeometry(QRect(30, 30, 171, 16))
        self.label_8 = QLabel(self.groupBox_2)
        self.label_8.setObjectName(u"label_8")
        self.label_8.setGeometry(QRect(30, 60, 161, 16))
        self.label_9 = QLabel(self.groupBox_2)
        self.label_9.setObjectName(u"label_9")
        self.label_9.setGeometry(QRect(30, 90, 181, 16))
        self.dateEdit = QDateEdit(self.groupBox_2)
        self.dateEdit.setObjectName(u"dateEdit")
        self.dateEdit.setGeometry(QRect(203, 25, 231, 22))
        self.dateEdit.setFrame(True)
        self.dateEdit.setDateTime(QDateTime(QDate(2000, 1, 3), QTime(2, 0, 0)))
        self.dateEdit.setCurrentSection(QDateTimeEdit.DaySection)
        self.dateEdit.setCalendarPopup(True)
        self.dateEdit_2 = QDateEdit(self.groupBox_2)
        self.dateEdit_2.setObjectName(u"dateEdit_2")
        self.dateEdit_2.setGeometry(QRect(203, 57, 231, 22))
        self.dateEdit_2.setCurrentSection(QDateTimeEdit.DaySection)
        self.dateEdit_2.setCalendarPopup(True)
        self.spinBox = QSpinBox(self.groupBox_2)
        self.spinBox.setObjectName(u"spinBox")
        self.spinBox.setEnabled(False)
        self.spinBox.setGeometry(QRect(203, 88, 231, 22))
        self.spinBox.setFrame(True)
        self.spinBox.setButtonSymbols(QAbstractSpinBox.NoButtons)
        self.spinBox.setProperty("showGroupSeparator", False)
        self.spinBox.setMinimum(1)
        self.spinBox.setMaximum(99999)
        self.groupBox_3 = QGroupBox(self.centralwidget)
        self.groupBox_3.setObjectName(u"groupBox_3")
        self.groupBox_3.setGeometry(QRect(24, 340, 451, 71))
        palette3 = QPalette()
        palette3.setBrush(QPalette.Active, QPalette.WindowText, brush)
        palette3.setBrush(QPalette.Active, QPalette.Button, brush8)
        palette3.setBrush(QPalette.Active, QPalette.Light, brush2)
        palette3.setBrush(QPalette.Active, QPalette.Midlight, brush9)
        palette3.setBrush(QPalette.Active, QPalette.Dark, brush10)
        palette3.setBrush(QPalette.Active, QPalette.Mid, brush11)
        palette3.setBrush(QPalette.Active, QPalette.Text, brush)
        palette3.setBrush(QPalette.Active, QPalette.BrightText, brush2)
        palette3.setBrush(QPalette.Active, QPalette.ButtonText, brush)
        palette3.setBrush(QPalette.Active, QPalette.Base, brush2)
        palette3.setBrush(QPalette.Active, QPalette.Window, brush8)
        palette3.setBrush(QPalette.Active, QPalette.Shadow, brush)
        palette3.setBrush(QPalette.Active, QPalette.AlternateBase, brush9)
        palette3.setBrush(QPalette.Active, QPalette.ToolTipBase, brush6)
        palette3.setBrush(QPalette.Active, QPalette.ToolTipText, brush)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette3.setBrush(QPalette.Active, QPalette.PlaceholderText, brush7)
#endif
        palette3.setBrush(QPalette.Inactive, QPalette.WindowText, brush)
        palette3.setBrush(QPalette.Inactive, QPalette.Button, brush8)
        palette3.setBrush(QPalette.Inactive, QPalette.Light, brush2)
        palette3.setBrush(QPalette.Inactive, QPalette.Midlight, brush9)
        palette3.setBrush(QPalette.Inactive, QPalette.Dark, brush10)
        palette3.setBrush(QPalette.Inactive, QPalette.Mid, brush11)
        palette3.setBrush(QPalette.Inactive, QPalette.Text, brush)
        palette3.setBrush(QPalette.Inactive, QPalette.BrightText, brush2)
        palette3.setBrush(QPalette.Inactive, QPalette.ButtonText, brush)
        palette3.setBrush(QPalette.Inactive, QPalette.Base, brush2)
        palette3.setBrush(QPalette.Inactive, QPalette.Window, brush8)
        palette3.setBrush(QPalette.Inactive, QPalette.Shadow, brush)
        palette3.setBrush(QPalette.Inactive, QPalette.AlternateBase, brush9)
        palette3.setBrush(QPalette.Inactive, QPalette.ToolTipBase, brush6)
        palette3.setBrush(QPalette.Inactive, QPalette.ToolTipText, brush)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette3.setBrush(QPalette.Inactive, QPalette.PlaceholderText, brush7)
#endif
        palette3.setBrush(QPalette.Disabled, QPalette.WindowText, brush10)
        palette3.setBrush(QPalette.Disabled, QPalette.Button, brush8)
        palette3.setBrush(QPalette.Disabled, QPalette.Light, brush2)
        palette3.setBrush(QPalette.Disabled, QPalette.Midlight, brush9)
        palette3.setBrush(QPalette.Disabled, QPalette.Dark, brush10)
        palette3.setBrush(QPalette.Disabled, QPalette.Mid, brush11)
        palette3.setBrush(QPalette.Disabled, QPalette.Text, brush10)
        palette3.setBrush(QPalette.Disabled, QPalette.BrightText, brush2)
        palette3.setBrush(QPalette.Disabled, QPalette.ButtonText, brush10)
        palette3.setBrush(QPalette.Disabled, QPalette.Base, brush8)
        palette3.setBrush(QPalette.Disabled, QPalette.Window, brush8)
        palette3.setBrush(QPalette.Disabled, QPalette.Shadow, brush)
        palette3.setBrush(QPalette.Disabled, QPalette.AlternateBase, brush8)
        palette3.setBrush(QPalette.Disabled, QPalette.ToolTipBase, brush6)
        palette3.setBrush(QPalette.Disabled, QPalette.ToolTipText, brush)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette3.setBrush(QPalette.Disabled, QPalette.PlaceholderText, brush7)
#endif
        self.groupBox_3.setPalette(palette3)
        self.groupBox_3.setFont(font)
        self.groupBox_3.setAutoFillBackground(True)
        self.label_11 = QLabel(self.groupBox_3)
        self.label_11.setObjectName(u"label_11")
        self.label_11.setGeometry(QRect(30, 30, 81, 16))
        self.comboBox = QComboBox(self.groupBox_3)
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.setObjectName(u"comboBox")
        self.comboBox.setGeometry(QRect(131, 28, 301, 22))
        self.label_3 = QLabel(self.centralwidget)
        self.label_3.setObjectName(u"label_3")
        self.label_3.setGeometry(QRect(34, 10, 131, 16))
        self.label_3.setFont(font)
        self.lineEdit = QLineEdit(self.centralwidget)
        self.lineEdit.setObjectName(u"lineEdit")
        self.lineEdit.setEnabled(False)
        self.lineEdit.setGeometry(QRect(180, 9, 113, 20))
        self.lineEdit.setFont(font)
        self.groupBox_4 = QGroupBox(self.centralwidget)
        self.groupBox_4.setObjectName(u"groupBox_4")
        self.groupBox_4.setGeometry(QRect(30, 430, 451, 71))
        palette4 = QPalette()
        palette4.setBrush(QPalette.Active, QPalette.WindowText, brush)
        palette4.setBrush(QPalette.Active, QPalette.Button, brush8)
        palette4.setBrush(QPalette.Active, QPalette.Light, brush2)
        palette4.setBrush(QPalette.Active, QPalette.Midlight, brush9)
        palette4.setBrush(QPalette.Active, QPalette.Dark, brush10)
        palette4.setBrush(QPalette.Active, QPalette.Mid, brush11)
        palette4.setBrush(QPalette.Active, QPalette.Text, brush)
        palette4.setBrush(QPalette.Active, QPalette.BrightText, brush2)
        palette4.setBrush(QPalette.Active, QPalette.ButtonText, brush)
        palette4.setBrush(QPalette.Active, QPalette.Base, brush2)
        palette4.setBrush(QPalette.Active, QPalette.Window, brush8)
        palette4.setBrush(QPalette.Active, QPalette.Shadow, brush)
        palette4.setBrush(QPalette.Active, QPalette.AlternateBase, brush9)
        palette4.setBrush(QPalette.Active, QPalette.ToolTipBase, brush6)
        palette4.setBrush(QPalette.Active, QPalette.ToolTipText, brush)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette4.setBrush(QPalette.Active, QPalette.PlaceholderText, brush7)
#endif
        palette4.setBrush(QPalette.Inactive, QPalette.WindowText, brush)
        palette4.setBrush(QPalette.Inactive, QPalette.Button, brush8)
        palette4.setBrush(QPalette.Inactive, QPalette.Light, brush2)
        palette4.setBrush(QPalette.Inactive, QPalette.Midlight, brush9)
        palette4.setBrush(QPalette.Inactive, QPalette.Dark, brush10)
        palette4.setBrush(QPalette.Inactive, QPalette.Mid, brush11)
        palette4.setBrush(QPalette.Inactive, QPalette.Text, brush)
        palette4.setBrush(QPalette.Inactive, QPalette.BrightText, brush2)
        palette4.setBrush(QPalette.Inactive, QPalette.ButtonText, brush)
        palette4.setBrush(QPalette.Inactive, QPalette.Base, brush2)
        palette4.setBrush(QPalette.Inactive, QPalette.Window, brush8)
        palette4.setBrush(QPalette.Inactive, QPalette.Shadow, brush)
        palette4.setBrush(QPalette.Inactive, QPalette.AlternateBase, brush9)
        palette4.setBrush(QPalette.Inactive, QPalette.ToolTipBase, brush6)
        palette4.setBrush(QPalette.Inactive, QPalette.ToolTipText, brush)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette4.setBrush(QPalette.Inactive, QPalette.PlaceholderText, brush7)
#endif
        palette4.setBrush(QPalette.Disabled, QPalette.WindowText, brush10)
        palette4.setBrush(QPalette.Disabled, QPalette.Button, brush8)
        palette4.setBrush(QPalette.Disabled, QPalette.Light, brush2)
        palette4.setBrush(QPalette.Disabled, QPalette.Midlight, brush9)
        palette4.setBrush(QPalette.Disabled, QPalette.Dark, brush10)
        palette4.setBrush(QPalette.Disabled, QPalette.Mid, brush11)
        palette4.setBrush(QPalette.Disabled, QPalette.Text, brush10)
        palette4.setBrush(QPalette.Disabled, QPalette.BrightText, brush2)
        palette4.setBrush(QPalette.Disabled, QPalette.ButtonText, brush10)
        palette4.setBrush(QPalette.Disabled, QPalette.Base, brush8)
        palette4.setBrush(QPalette.Disabled, QPalette.Window, brush8)
        palette4.setBrush(QPalette.Disabled, QPalette.Shadow, brush)
        palette4.setBrush(QPalette.Disabled, QPalette.AlternateBase, brush8)
        palette4.setBrush(QPalette.Disabled, QPalette.ToolTipBase, brush6)
        palette4.setBrush(QPalette.Disabled, QPalette.ToolTipText, brush)
#if QT_VERSION >= QT_VERSION_CHECK(5, 12, 0)
        palette4.setBrush(QPalette.Disabled, QPalette.PlaceholderText, brush7)
#endif
        self.groupBox_4.setPalette(palette4)
        self.groupBox_4.setFont(font)
        self.groupBox_4.setAutoFillBackground(True)
        self.label_12 = QLabel(self.groupBox_4)
        self.label_12.setObjectName(u"label_12")
        self.label_12.setGeometry(QRect(22, 30, 91, 16))
        self.comboBox_2 = QComboBox(self.groupBox_4)
        self.comboBox_2.addItem("")
        self.comboBox_2.addItem("")
        self.comboBox_2.addItem("")
        self.comboBox_2.addItem("")
        self.comboBox_2.addItem("")
        self.comboBox_2.addItem("")
        self.comboBox_2.addItem("")
        self.comboBox_2.addItem("")
        self.comboBox_2.addItem("")
        self.comboBox_2.setObjectName(u"comboBox_2")
        self.comboBox_2.setGeometry(QRect(127, 27, 301, 22))
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QMenuBar(MainWindow)
        self.menubar.setObjectName(u"menubar")
        self.menubar.setGeometry(QRect(0, 0, 1366, 22))
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QStatusBar(MainWindow)
        self.statusbar.setObjectName(u"statusbar")
        MainWindow.setStatusBar(self.statusbar)
        self.toolBar = QToolBar(MainWindow)
        self.toolBar.setObjectName(u"toolBar")
        self.toolBar.setFont(font)
        self.toolBar.setToolButtonStyle(Qt.ToolButtonTextBesideIcon)
        MainWindow.addToolBar(Qt.TopToolBarArea, self.toolBar)

        self.toolBar.addAction(self.actionNuevo)
        self.toolBar.addAction(self.actionGrabar)
        self.toolBar.addAction(self.actionEliminar)
        self.toolBar.addAction(self.actionImprimir)
        self.toolBar.addSeparator()
        self.toolBar.addAction(self.actionSalir)

        self.retranslateUi(MainWindow)

        QMetaObject.connectSlotsByName(MainWindow)
    # setupUi

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QCoreApplication.translate("MainWindow", u"Sutrakomaq: Registro de Dirigentes", None))
        self.actionNuevo.setText(QCoreApplication.translate("MainWindow", u"Nuevo", None))
        self.actionEliminar.setText(QCoreApplication.translate("MainWindow", u"Eliminar", None))
        self.actionGrabar.setText(QCoreApplication.translate("MainWindow", u"Grabar", None))
        self.actionImprimir.setText(QCoreApplication.translate("MainWindow", u"Imprimir", None))
        self.actionSalir.setText(QCoreApplication.translate("MainWindow", u"Salir", None))
        self.groupBox.setTitle(QCoreApplication.translate("MainWindow", u"Datos de Dirigente", None))
        self.label_2.setText(QCoreApplication.translate("MainWindow", u"NOMBRE*", None))
        self.label_4.setText(QCoreApplication.translate("MainWindow", u"APELLIDO*", None))
        self.label_6.setText(QCoreApplication.translate("MainWindow", u"DNI*", None))
        self.groupBox_2.setTitle(QCoreApplication.translate("MainWindow", u"Fechas de Dirigente", None))
        self.label_7.setText(QCoreApplication.translate("MainWindow", u"INICIO DEL PERIODO", None))
        self.label_8.setText(QCoreApplication.translate("MainWindow", u"TERMINO DEL PERIDO", None))
        self.label_9.setText(QCoreApplication.translate("MainWindow", u"CANTIDAD EN DIAS", None))
        self.groupBox_3.setTitle(QCoreApplication.translate("MainWindow", u"Vigencia de Dirigente", None))
        self.label_11.setText(QCoreApplication.translate("MainWindow", u"VIGENCIA", None))
        self.comboBox.setItemText(0, QCoreApplication.translate("MainWindow", u"VIGENTE", None))
        self.comboBox.setItemText(1, QCoreApplication.translate("MainWindow", u"RETIRADO", None))

        self.label_3.setText(QCoreApplication.translate("MainWindow", u"ID DEL DIRIGENTE", None))
        self.groupBox_4.setTitle(QCoreApplication.translate("MainWindow", u"Secretaria Asignada", None))
        self.label_12.setText(QCoreApplication.translate("MainWindow", u"SECRETAR\u00cdA", None))
        self.comboBox_2.setItemText(0, QCoreApplication.translate("MainWindow", u"GENERAL", None))
        self.comboBox_2.setItemText(1, QCoreApplication.translate("MainWindow", u"ADJUNTO", None))
        self.comboBox_2.setItemText(2, QCoreApplication.translate("MainWindow", u"DEFENSA", None))
        self.comboBox_2.setItemText(3, QCoreApplication.translate("MainWindow", u"ORGANISACION", None))
        self.comboBox_2.setItemText(4, QCoreApplication.translate("MainWindow", u"ECONOMIA", None))
        self.comboBox_2.setItemText(5, QCoreApplication.translate("MainWindow", u"ASISTENCIA SOCIAL", None))
        self.comboBox_2.setItemText(6, QCoreApplication.translate("MainWindow", u"PRENSA Y PROPAGANDA", None))
        self.comboBox_2.setItemText(7, QCoreApplication.translate("MainWindow", u"SEGURIDAD Y SALUD", None))
        self.comboBox_2.setItemText(8, QCoreApplication.translate("MainWindow", u"ACTAS Y ACTIVOS", None))

        self.toolBar.setWindowTitle(QCoreApplication.translate("MainWindow", u"toolBar", None))
    # retranslateUi

