

#Ataller sistemas lineales 
#Juan Felipe Marin
#Brian Hortua
#Marlon Linares
#Jose Andres Mora

# 2. Dado el sistema lineal de la forma AX = b donde la matriz de coeficientes inicialmente esta dado por:
#4x + +2y + 5z = 18
#2x + 5y + z = 27.3
#2x + 4y + 3z = 16.2

#A)  Es Diagional Dominante? 

library(pracma)
library(Matrix)


A = matrix(c(4,2,5,2,5,1,2,4,3), nrow=3, byrow=TRUE)
b = c(18,27.3,16.2)

det(A)#verificar que el sistema tenga solución
solve(A,b)

#No es Diagonal Dominante
# |4|> |2|+|5|
#No se cumple la igualdad 

#B) 

diagonal1 <- function(M) {
  M[col(M)!=row(M)] <- 0
  return(M)
}
diagonal1(A)
D = diagonal1(A)
D
L = tril(A,k=-1,diag = FALSE)
L
U = triu(A,k=1,diag = FALSE)
U
D+L+U#verificación retorna A
TJ = (-solve(D))%*%(L+U)
#TJ es la matriz de trancisión 
TJ

propios <- function(matriz) {
  a <- eigen(matriz)#utilizar la funcion eigen
  names(a$values) <- 1:length(a$values)#genera valores
  names(a) <- c("valores","vectores")
  colnames(a$vectores) <- 1:nrow(a$vectores)
  a
}
y=TJ
propios(matriz=y) # O simplemente:
propios(y) 

#-----------------------------------------------------------------

print("Norma")
print(norm(TJ,"I"))




