import pylab as pl
import numpy as np
from math import cos
from math import e


def f1(t):
    return 2+cos(3*t)
def f2(t):
    return 2-(e**t)
f3 = np.vectorize(f1)
f4 = np.vectorize(f2)
X = np.linspace(-5, 5, 256, endpoint=True)
C, S = f3(X),f4(X)
pl.ylim(-10, 10)
pl.xlim(-5, 5)

pl.plot(X, C,color="blue", linewidth=1.0, linestyle="-")
pl.plot(X, S, color="green", linewidth=1.0, linestyle="-")

pl.show()
pl.savefig("output.png")
