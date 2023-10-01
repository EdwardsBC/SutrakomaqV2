from PySide6.QtWidgets import QApplication, QMainWindow
from ui.reporte_ejemplo1_ui import Ui_MainWindow as Ui_MainWindow_Menu
import sys
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg as FigureCanvas
import matplotlib.pyplot as plt
import numpy as np

class reporteEjemplo1(QMainWindow, Ui_MainWindow_Menu):
    def __init__(self):
        super().__init__()
        self.setupUi(self)

        self.grafica = Canvas_grafica()
        self.grafica1 = Canvas_grafica2()
        self.grafica2 = Canvas_grafica3()
        self.grafica3 = Canvas_grafica4()

        self.verticalLayout.addWidget(self.grafica)
        self.verticalLayout_2.addWidget(self.grafica1)
        self.verticalLayout_3.addWidget(self.grafica2)
        self.verticalLayout_4.addWidget(self.grafica3)

class Canvas_grafica(FigureCanvas):
    def __init__(self, parent=None):     
        self.fig , self.ax = plt.subplots(1, dpi=100, figsize=(5, 5), 
            sharey=True, facecolor='white')
        super().__init__(self.fig) 

        nombres = ['15', '25', '30', '35','40']
        colores = ['red','red','red','red', 'red']
        tamaño = [10, 15, 20, 25, 30]

        self.ax.bar(nombres, tamaño, color = colores)
        self.fig.suptitle('Grafica de Barras',size=9)


class Canvas_grafica2(FigureCanvas):
    def __init__(self, parent=None):     
        self.fig , self.ax = plt.subplots(1,dpi=100, figsize=(5, 5), 
            sharey=True, facecolor='white')
        super().__init__(self.fig) 

        nombres = ['Azul', 'Amarillo', 'Celeste', 'Fuxia']
        colores = ['blue','yellow','aqua','fuchsia']
        tamaño = [20, 26, 30, 24]
        explotar = [0.05, 0.05, 0.05, 0.05] 

        plt.title("CANTIDAD",
            color='black',size=9, family="Arial")

        self.ax.pie(tamaño, explode = explotar, labels = nombres, 
            colors = colores,
                autopct = '%1.0f%%', pctdistance = 0.6,
                shadow=True, startangle=90, radius = 0.8, 
                labeldistance=1.1)  
        self.ax.axis('equal')


class Canvas_grafica3(FigureCanvas):
    def __init__(self, parent=None):     
        self.fig , self.ax = plt.subplots(1, dpi=60, figsize=(2, 3), 
            sharey=True, facecolor='white')
        super().__init__(self.fig) 

        self.fig.suptitle('Grafica de Datos',size=9)
        np.random.seed(40)
        y = np.random.randn(400).cumsum()

        self.ax = plt.axes()
        plt.plot(y, color='magenta')


class Canvas_grafica4(FigureCanvas):
    def __init__(self, parent=None):     
        self.fig , self.ax = plt.subplots(1, dpi=100, figsize=(5, 5), 
            sharey=True, facecolor='white')
        super().__init__(self.fig) 

        x = [1, 2, 3, 4, 5,6,7]
        y1 = [1, 0, 1, 3, 2,4,3]
        y2 = [0, 2, 2, 3, 4,6,5]
        y3 = [3, 1, 3, 4, 2,7,6]

        y = np.vstack([y1, y2, y3])

        labels = ["Y1 ", "Y2", "Y3"]
        color = ["orange","blue","green"]

        self.ax.stackplot(x, y1, y2, y3, labels=labels,colors=color)
        self.ax.legend(loc='upper left')
        self.ax.stackplot(x, y)
        self.fig.suptitle('Grafica Stackplot',size=9)


if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = reporteEjemplo1()
    window.show()
    window.showMaximized()
    sys.exit(exec())