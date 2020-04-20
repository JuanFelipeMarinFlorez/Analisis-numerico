
library(gridBezier)
points=15
bezier3<- BezierGrob(c(0,0,0.8,0.8),c(0.8,0.8,0.8,0),gp=gpar(lwd=3),stepFn = nSteps(points))#EJECUTA LA FUNCION 
vBezier3<- BezierPoints(bezier3)#OBTIENE LOS VALORES DEL ALGORITMO
vBez3x=as.vector(vBezier3$x)#QUITA LAS UNIDADES
vBez3y=as.vector(vBezier3$y)#QUITA LAS UNIDADES
vBez3x=vBez3x*-1
x=c(4,-4,0,-4)
y=c(0,4,-4,-0)
z=c(0,0,0,1)
spline <- interp(x,y,z,linear=FALSE)
# rotatable 3D plot of points and spline surface
library(rgl)
open3d(scale=c(1/diff(range(x)),1/diff(range(y)),1/diff(range(z))))
with(spline,surface3d(x,y,z,alpha=1, color="black"))
points3d(x,y,z)
title3d(xlab="X",ylab="Y",zlab="Z")
axes3d()





