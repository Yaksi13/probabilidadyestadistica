#ALFA DE CRONBACH


#paquete a utilizar
install.packages("userfriendlyscience")
library(userfriendlyscience)
BD_Likert<-read.csv("BD_Likert.cvs")



#Exploración de la matriz datos
dim(BD_Likert)
names(BD_Likert)
str(BD_Likert)
typeof(BD_Likert)


#En busca de valores perdidos
anyNA(BD_Likert)


#localiza la posición de los valores perdidos
which(is.na(BD_Likert))


#elimina las filas que contengan datos perdidos
# y se guarda en una nueva matriz de datos que es la
#que se utilizará para trabajar.


BD_Likert2<-na.omit(BD_Likert)




#Construcción de los constructos


attach(BD_Likert2)


constructo1<-data.frame(A1,A2,A3,A4,A5,A6,A7,A8)
constructo2<-data.frame(B1,B2,B3,B4)
constructo3<-data.frame(C1,C2,C3,C4,C5,C6)
constructo4<-data.frame(D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13)
constructo5<-data.frame(E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11)
constructo6<-data.frame(F1,F2,F3,F4,F5,F6,F7,F8)
constructo7<-data.frame(G1,G2,G3,G4,G5,G6,G7,G8)
constructo8<-data.frame(H1,H2,H3,H4)

#Calculamos el alfa de Cronbach para cada
#uno de los constructos
names (BD_Likert)

cotnst2<-select(BD_Likert,18,28,29,45)
cotnst6<-select(BD_Likert,12,14,19,20,34,51,61,62)
cotnst8<-select(BD_Likert, 4, 8, 9, 10)

scaleReliability(constructo1)
scaleReliability(constructo2)
scaleReliability(constructo3)
scaleReliability(constructo4)
scaleReliability(constructo5)
scaleReliability(constructo6)
scaleReliability(constructo7)
scaleReliability(constructo8)

#Alpha de cronbach con paquete de pysch
library(dplyr)

#Coeficiente alfa de cronbach
library(pysch)
alpha(cotnst2)
alpha(cotnst6)
alpha(cotnst8)

#--------------EJERCICIO-------
#1.- Completa la construccion de los constructos
#D,E,F,G Y H.


#2.- Calcula el coeficiente alfa de cronbach para
#los constructos D, E, F, G Y H.


#3.- Súbelos a tu repositorio en Github con el nombre
#de Alfa de cronbach.


#4.- Sube en classroom una tabla (pdf) en donde concentres
#los resultados que obtuviste del coeficiente, interprétalos Y TOMA UNA DESICIÓN CON RESPECTO AL CONSTRUCTO.
