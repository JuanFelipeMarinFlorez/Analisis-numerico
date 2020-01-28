#!/usr/bin/env python
# -*- coding: utf-8 -*-
from matplotlib import pyplot
from math import e
from math import pi

# Función cuadrática.
def f1(x):
    return ((e**x)- (pi*x))
# Función lineal.
def f2(x):
    return 4*x + 1
# Valores del eje X que toma el gráfico.
x = range(-1500, 1500)
# Graficar ambas funciones.
pyplot.plot(x, [f1(i) for i in x])
#pyplot.plot(x, [f2(i) for i in x])
# Establecer el color de los ejes.
pyplot.axhline(0, color="black")
pyplot.axvline(0, color="black")
# Limitar los valores de los ejes.
pyplot.xlim(-10000, 15000)
pyplot.ylim(-10000, 15000)
# Guardar gráfico como imágen PNG.
#pyplot.savefig("output.png")
# Mostrarlo.
pyplot.show()
