# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'registro_ingresos_egresosMWbOCW.ui'
##
## Created by: Qt User Interface Compiler version 6.7.2
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
from PySide6.QtWidgets import (QAbstractSpinBox, QApplication, QCheckBox, QComboBox,
    QDateEdit, QDateTimeEdit, QDoubleSpinBox, QGroupBox,
    QLabel, QLineEdit, QMainWindow, QSizePolicy,
    QToolBar, QWidget)
import resources_rc

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        if not MainWindow.objectName():
            MainWindow.setObjectName(u"MainWindow")
        MainWindow.resize(1027, 745)
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
        icon.addFile(u":/icons/resources/icons/nuevo.png", QSize(), QIcon.Mode.Normal, QIcon.State.Off)
        self.actionNuevo.setIcon(icon)
        self.actionGrabar = QAction(MainWindow)
        self.actionGrabar.setObjectName(u"actionGrabar")
        icon1 = QIcon()
        icon1.addFile(u":/icons/resources/icons/grabar.png", QSize(), QIcon.Mode.Normal, QIcon.State.Off)
        self.actionGrabar.setIcon(icon1)
        self.actionEliminar = QAction(MainWindow)
        self.actionEliminar.setObjectName(u"actionEliminar")
        icon2 = QIcon()
        icon2.addFile(u":/icons/resources/icons/eliminar.png", QSize(), QIcon.Mode.Normal, QIcon.State.Off)
        self.actionEliminar.setIcon(icon2)
        self.actionImprimir = QAction(MainWindow)
        self.actionImprimir.setObjectName(u"actionImprimir")
        icon3 = QIcon()
        icon3.addFile(u":/icons/resources/icons/imprimir.png", QSize(), QIcon.Mode.Normal, QIcon.State.Off)
        self.actionImprimir.setIcon(icon3)
        self.actionSalir = QAction(MainWindow)
        self.actionSalir.setObjectName(u"actionSalir")
        icon4 = QIcon()
        icon4.addFile(u":/icons/resources/icons/salir.png", QSize(), QIcon.Mode.Normal, QIcon.State.Off)
        self.actionSalir.setIcon(icon4)
        self.centralwidget = QWidget(MainWindow)
        self.centralwidget.setObjectName(u"centralwidget")
        self.lineEdit = QLineEdit(self.centralwidget)
        self.lineEdit.setObjectName(u"lineEdit")
        self.lineEdit.setEnabled(False)
        self.lineEdit.setGeometry(QRect(132, 27, 101, 20))
        self.lineEdit.setFont(font)
        self.label_5 = QLabel(self.centralwidget)
        self.label_5.setObjectName(u"label_5")
        self.label_5.setGeometry(QRect(11, 29, 121, 16))
        self.label_5.setFont(font)
        self.groupBox_2 = QGroupBox(self.centralwidget)
        self.groupBox_2.setObjectName(u"groupBox_2")
        self.groupBox_2.setGeometry(QRect(10, 160, 651, 191))
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
        self.groupBox_2.setPalette(palette1)
        self.groupBox_2.setFont(font)
        self.groupBox_2.setAutoFillBackground(True)
        self.label_4 = QLabel(self.groupBox_2)
        self.label_4.setObjectName(u"label_4")
        self.label_4.setGeometry(QRect(20, 93, 81, 16))
        self.label_3 = QLabel(self.groupBox_2)
        self.label_3.setObjectName(u"label_3")
        self.label_3.setGeometry(QRect(20, 122, 81, 16))
        self.label_2 = QLabel(self.groupBox_2)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setGeometry(QRect(20, 65, 91, 16))
        self.label = QLabel(self.groupBox_2)
        self.label.setObjectName(u"label")
        self.label.setGeometry(QRect(20, 34, 49, 16))
        self.dateEdit = QDateEdit(self.groupBox_2)
        self.dateEdit.setObjectName(u"dateEdit")
        self.dateEdit.setGeometry(QRect(120, 30, 521, 22))
        self.dateEdit.setFrame(True)
        self.dateEdit.setDateTime(QDateTime(QDate(2000, 1, 5), QTime(19, 0, 0)))
        self.dateEdit.setCurrentSection(QDateTimeEdit.Section.DaySection)
        self.dateEdit.setCalendarPopup(True)
        self.lineEdit_2 = QLineEdit(self.groupBox_2)
        self.lineEdit_2.setObjectName(u"lineEdit_2")
        self.lineEdit_2.setGeometry(QRect(120, 60, 521, 20))
        self.comboBox = QComboBox(self.groupBox_2)
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.setObjectName(u"comboBox")
        self.comboBox.setGeometry(QRect(120, 90, 521, 22))
        self.doubleSpinBox = QDoubleSpinBox(self.groupBox_2)
        self.doubleSpinBox.setObjectName(u"doubleSpinBox")
        self.doubleSpinBox.setGeometry(QRect(120, 120, 521, 22))
        self.doubleSpinBox.setFrame(True)
        self.doubleSpinBox.setButtonSymbols(QAbstractSpinBox.ButtonSymbols.NoButtons)
        self.doubleSpinBox.setMaximum(9999999.990000000223517)
        self.checkBox = QCheckBox(self.groupBox_2)
        self.checkBox.setObjectName(u"checkBox")
        self.checkBox.setGeometry(QRect(120, 152, 21, 20))
        self.checkBox.setChecked(True)
        self.label_12 = QLabel(self.groupBox_2)
        self.label_12.setObjectName(u"label_12")
        self.label_12.setGeometry(QRect(20, 154, 101, 16))
        self.groupBox_3 = QGroupBox(self.centralwidget)
        self.groupBox_3.setObjectName(u"groupBox_3")
        self.groupBox_3.setGeometry(QRect(10, 360, 651, 81))
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
        self.groupBox_3.setPalette(palette2)
        self.groupBox_3.setFont(font)
        self.groupBox_3.setAutoFillBackground(True)
        self.label_15 = QLabel(self.groupBox_3)
        self.label_15.setObjectName(u"label_15")
        self.label_15.setGeometry(QRect(20, 40, 101, 16))
        self.label_15.setFont(font)
        self.lineEdit_7 = QLineEdit(self.groupBox_3)
        self.lineEdit_7.setObjectName(u"lineEdit_7")
        self.lineEdit_7.setEnabled(False)
        self.lineEdit_7.setGeometry(QRect(126, 36, 101, 20))
        self.lineEdit_7.setFont(font)
        self.lineEdit_6 = QLineEdit(self.groupBox_3)
        self.lineEdit_6.setObjectName(u"lineEdit_6")
        self.lineEdit_6.setEnabled(False)
        self.lineEdit_6.setGeometry(QRect(380, 40, 131, 20))
        self.lineEdit_6.setFont(font)
        self.label_16 = QLabel(self.groupBox_3)
        self.label_16.setObjectName(u"label_16")
        self.label_16.setGeometry(QRect(280, 40, 91, 16))
        self.label_16.setFont(font)
        self.groupBox_4 = QGroupBox(self.centralwidget)
        self.groupBox_4.setObjectName(u"groupBox_4")
        self.groupBox_4.setGeometry(QRect(10, 70, 651, 81))
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
        self.groupBox_4.setPalette(palette3)
        self.groupBox_4.setFont(font)
        self.groupBox_4.setAutoFillBackground(True)
        self.lineEdit_4 = QLineEdit(self.groupBox_4)
        self.lineEdit_4.setObjectName(u"lineEdit_4")
        self.lineEdit_4.setEnabled(False)
        self.lineEdit_4.setGeometry(QRect(380, 28, 121, 20))
        self.lineEdit_4.setFont(font)
        self.label_13 = QLabel(self.groupBox_4)
        self.label_13.setObjectName(u"label_13")
        self.label_13.setGeometry(QRect(20, 30, 101, 16))
        self.label_13.setFont(font)
        self.label_14 = QLabel(self.groupBox_4)
        self.label_14.setObjectName(u"label_14")
        self.label_14.setGeometry(QRect(280, 30, 91, 16))
        self.label_14.setFont(font)
        self.lineEdit_5 = QLineEdit(self.groupBox_4)
        self.lineEdit_5.setObjectName(u"lineEdit_5")
        self.lineEdit_5.setEnabled(False)
        self.lineEdit_5.setGeometry(QRect(130, 28, 101, 20))
        self.lineEdit_5.setFont(font)
        MainWindow.setCentralWidget(self.centralwidget)
        self.toolBar = QToolBar(MainWindow)
        self.toolBar.setObjectName(u"toolBar")
        self.toolBar.setToolButtonStyle(Qt.ToolButtonStyle.ToolButtonTextBesideIcon)
        MainWindow.addToolBar(Qt.ToolBarArea.TopToolBarArea, self.toolBar)
        QWidget.setTabOrder(self.lineEdit, self.lineEdit_5)
        QWidget.setTabOrder(self.lineEdit_5, self.lineEdit_4)
        QWidget.setTabOrder(self.lineEdit_4, self.dateEdit)
        QWidget.setTabOrder(self.dateEdit, self.lineEdit_2)
        QWidget.setTabOrder(self.lineEdit_2, self.comboBox)
        QWidget.setTabOrder(self.comboBox, self.doubleSpinBox)
        QWidget.setTabOrder(self.doubleSpinBox, self.checkBox)
        QWidget.setTabOrder(self.checkBox, self.lineEdit_7)
        QWidget.setTabOrder(self.lineEdit_7, self.lineEdit_6)

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
        MainWindow.setWindowTitle(QCoreApplication.translate("MainWindow", u"MainWindow", None))
        self.actionNuevo.setText(QCoreApplication.translate("MainWindow", u"Nuevo", None))
        self.actionGrabar.setText(QCoreApplication.translate("MainWindow", u"Grabar", None))
        self.actionEliminar.setText(QCoreApplication.translate("MainWindow", u"Eliminar", None))
        self.actionImprimir.setText(QCoreApplication.translate("MainWindow", u"Imprimir", None))
        self.actionSalir.setText(QCoreApplication.translate("MainWindow", u"Salir", None))
        self.label_5.setText(QCoreApplication.translate("MainWindow", u"ID MOVIMIENTO", None))
        self.groupBox_2.setTitle(QCoreApplication.translate("MainWindow", u"Datos del movimiento", None))
        self.label_4.setText(QCoreApplication.translate("MainWindow", u"TIPO*", None))
        self.label_3.setText(QCoreApplication.translate("MainWindow", u"CANTIDAD*", None))
        self.label_2.setText(QCoreApplication.translate("MainWindow", u"CONCEPTO*", None))
        self.label.setText(QCoreApplication.translate("MainWindow", u"FECHA*", None))
        self.comboBox.setItemText(0, QCoreApplication.translate("MainWindow", u"INGRESO", None))
        self.comboBox.setItemText(1, QCoreApplication.translate("MainWindow", u"EGRESO", None))

        self.checkBox.setText("")
        self.label_12.setText(QCoreApplication.translate("MainWindow", u"CAJA CHICA", None))
        self.groupBox_3.setTitle(QCoreApplication.translate("MainWindow", u"Nuevos saldos", None))
        self.label_15.setText(QCoreApplication.translate("MainWindow", u"CAJA CHICA", None))
        self.label_16.setText(QCoreApplication.translate("MainWindow", u"CAJA PIURA", None))
        self.groupBox_4.setTitle(QCoreApplication.translate("MainWindow", u"Saldos actuales", None))
        self.label_13.setText(QCoreApplication.translate("MainWindow", u"CAJA CHICA", None))
        self.label_14.setText(QCoreApplication.translate("MainWindow", u"CAJA PIURA", None))
        self.toolBar.setWindowTitle(QCoreApplication.translate("MainWindow", u"toolBar", None))
    # retranslateUi

