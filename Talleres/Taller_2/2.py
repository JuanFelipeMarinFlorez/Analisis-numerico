

#Metodo de la bisección

#funcion a probar
#entradas: un entero x
#salidas: un decimal 
def f(x):
  return ((e**x)- (pi*x))
#funcion que representa el metodo de la biseccion 
#entradas: f la funcion a probar, a y b limites dados
#salidas: Xn donde f(x) de 0 
def metodoBiseccion(f,a,b):
  x0=a 
  x1=b
  x2= (x1+x2)/2
  if((f(x2)*f(x0))<0):
    x1=x2 
  else:
    x0=x1
    x1=x2

