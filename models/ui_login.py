# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'loginbkFbQX.ui'
##
## Created by: Qt User Interface Compiler version 6.7.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide6.QtCore import (QCoreApplication, QDate, QDateTime, QLocale,
    QMetaObject, QObject, QPoint, QRect,
    QSize, QTime, QUrl, Qt)
from PySide6.QtGui import (QBrush, QColor, QConicalGradient, QCursor,
    QFont, QFontDatabase, QGradient, QIcon,
    QImage, QKeySequence, QLinearGradient, QPainter,
    QPalette, QPixmap, QRadialGradient, QTransform)
from PySide6.QtWidgets import (QApplication, QFrame, QLabel, QLineEdit,
    QMainWindow, QPushButton, QSizePolicy, QTabWidget,
    QVBoxLayout, QWidget)
import resources_rc

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        if not MainWindow.objectName():
            MainWindow.setObjectName(u"MainWindow")
        MainWindow.setWindowModality(Qt.WindowModality.NonModal)
        MainWindow.resize(290, 238)
        MainWindow.setMaximumSize(QSize(290, 290))
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
        font.setFamilies([u"Berlin Sans FB Demi"])
        font.setPointSize(10)
        font.setBold(True)
        MainWindow.setFont(font)
        MainWindow.setWindowOpacity(1.000000000000000)
        MainWindow.setStyleSheet(u"")
        MainWindow.setToolButtonStyle(Qt.ToolButtonStyle.ToolButtonIconOnly)
        MainWindow.setTabShape(QTabWidget.TabShape.Rounded)
        MainWindow.setDockNestingEnabled(False)
        MainWindow.setUnifiedTitleAndToolBarOnMac(False)
        self.centralwidget = QWidget(MainWindow)
        self.centralwidget.setObjectName(u"centralwidget")
        self.verticalLayout = QVBoxLayout(self.centralwidget)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.frame = QFrame(self.centralwidget)
        self.frame.setObjectName(u"frame")
        self.frame.setMinimumSize(QSize(110, 30))
        self.frame.setMaximumSize(QSize(20, 20))
        self.frame.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame.setFrameShadow(QFrame.Shadow.Raised)
        self.label = QLabel(self.frame)
        self.label.setObjectName(u"label")
        self.label.setGeometry(QRect(0, 0, 111, 31))
        font1 = QFont()
        font1.setFamilies([u"Berlin Sans FB Demi"])
        font1.setPointSize(24)
        font1.setBold(True)
        self.label.setFont(font1)
        self.label.setAlignment(Qt.AlignmentFlag.AlignCenter)

        self.verticalLayout.addWidget(self.frame, 0, Qt.AlignmentFlag.AlignHCenter|Qt.AlignmentFlag.AlignVCenter)

        self.frame_2 = QFrame(self.centralwidget)
        self.frame_2.setObjectName(u"frame_2")
        self.frame_2.setMinimumSize(QSize(225, 50))
        self.frame_2.setMaximumSize(QSize(225, 50))
        self.frame_2.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_2.setFrameShadow(QFrame.Shadow.Raised)
        self.lineEdit = QLineEdit(self.frame_2)
        self.lineEdit.setObjectName(u"lineEdit")
        self.lineEdit.setGeometry(QRect(10, 10, 211, 31))
        font2 = QFont()
        font2.setFamilies([u"Berlin Sans FB Demi"])
        font2.setPointSize(12)
        font2.setBold(True)
        self.lineEdit.setFont(font2)
        self.lineEdit.setStyleSheet(u"QLineEdit {\n"
"    border: 2px solid #000000;\n"
"    border-radius: 10px;\n"
"    padding: 5px;\n"
"}\n"
"")

        self.verticalLayout.addWidget(self.frame_2, 0, Qt.AlignmentFlag.AlignHCenter)

        self.frame_3 = QFrame(self.centralwidget)
        self.frame_3.setObjectName(u"frame_3")
        self.frame_3.setMinimumSize(QSize(225, 50))
        self.frame_3.setMaximumSize(QSize(225, 50))
        self.frame_3.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_3.setFrameShadow(QFrame.Shadow.Raised)
        self.lineEdit_2 = QLineEdit(self.frame_3)
        self.lineEdit_2.setObjectName(u"lineEdit_2")
        self.lineEdit_2.setGeometry(QRect(10, 10, 211, 31))
        self.lineEdit_2.setFont(font2)
        self.lineEdit_2.setStyleSheet(u"QLineEdit {\n"
"    border: 2px solid #000000;\n"
"    border-radius: 10px;\n"
"    padding: 5px;\n"
"}\n"
"")
        self.lineEdit_2.setDragEnabled(False)
        self.lineEdit_2.setClearButtonEnabled(False)
        self.pushButton_2 = QPushButton(self.frame_3)
        self.pushButton_2.setObjectName(u"pushButton_2")
        self.pushButton_2.setGeometry(QRect(195, 15, 21, 21))
        font3 = QFont()
        font3.setFamilies([u"Berlin Sans FB Demi"])
        font3.setPointSize(9)
        font3.setBold(True)
        self.pushButton_2.setFont(font3)
        self.pushButton_2.setStyleSheet(u"QPushButton_2{\n"
"\n"
"}")

        self.verticalLayout.addWidget(self.frame_3, 0, Qt.AlignmentFlag.AlignHCenter)

        self.pushButton_3 = QPushButton(self.centralwidget)
        self.pushButton_3.setObjectName(u"pushButton_3")
        self.pushButton_3.setFont(font3)
        self.pushButton_3.setStyleSheet(u"QPushButton_2{\n"
"\n"
"}")

        self.verticalLayout.addWidget(self.pushButton_3)

        self.frame_4 = QFrame(self.centralwidget)
        self.frame_4.setObjectName(u"frame_4")
        self.frame_4.setMinimumSize(QSize(170, 50))
        self.frame_4.setMaximumSize(QSize(100, 50))
        self.frame_4.setFrameShape(QFrame.Shape.StyledPanel)
        self.frame_4.setFrameShadow(QFrame.Shadow.Raised)
        self.pushButton = QPushButton(self.frame_4)
        self.pushButton.setObjectName(u"pushButton")
        self.pushButton.setGeometry(QRect(10, 10, 151, 31))
        self.pushButton.setFont(font2)
        self.pushButton.setStyleSheet(u"QPushButton {\n"
"    border: 2px solid #000000;\n"
"    border-radius: 5px;\n"
"    padding: 5px;\n"
"    background-color: #ffffff; /* Fondo blanco */\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"    background-color: #f0f0f0; /* Fondo gris claro cuando el cursor est\u00e1 sobre el bot\u00f3n */\n"
"}\n"
"\n"
"QPushButton:!hover {\n"
"    background-color: #ffffff; /* Vuelve al fondo blanco cuando el cursor sale del bot\u00f3n */\n"
"}\n"
"")

        self.verticalLayout.addWidget(self.frame_4, 0, Qt.AlignmentFlag.AlignHCenter)

        MainWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(MainWindow)

        QMetaObject.connectSlotsByName(MainWindow)
    # setupUi

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QCoreApplication.translate("MainWindow", u"SUTRAKOMAQ 1.0.0", None))
        self.label.setText(QCoreApplication.translate("MainWindow", u"LOGIN", None))
        self.lineEdit.setInputMask("")
        self.lineEdit.setPlaceholderText(QCoreApplication.translate("MainWindow", u"Usuario", None))
        self.lineEdit_2.setInputMask("")
        self.lineEdit_2.setPlaceholderText(QCoreApplication.translate("MainWindow", u"Contrase\u00f1a", None))
        self.pushButton_2.setText(QCoreApplication.translate("MainWindow", u"!", None))
        self.pushButton_3.setText(QCoreApplication.translate("MainWindow", u"Recuperar Contrase\u00f1a", None))
        self.pushButton.setText(QCoreApplication.translate("MainWindow", u"Ingresar", None))
    # retranslateUi

