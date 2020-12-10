#Análisis de datos en scala Likert

install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#para este ejercicio vamos a utilizar la matriz de datos
#de los resultados de la prueba PISA en 2009
#que se encuentra precargada en el paquete likert
#mediante el comando data
data("pisaitems")

#Le damos un nuevo nombre a la matriz de datos
#para su mejor uso
pisayak<-pisaitems

#Exploramos la matriz de datos
names(pisayak)
typeof(pisayak)
str(pisayak)


#visualizamos los valores que componen una variable
head(pisayak$CNT)
head(pisayak$ST24Q01)

#buscamos los valores perdidos
anyNA(pisayak)
#numero total de datos perdidos en la matriz de datos
sum(is.na(pisayak)) 
#eliminacion de filas con datos perdidos
#y creamos una nueva matriz
pisa2<-na.omit(pisayak)
#verificamos que la nueva matriz no tenga valores perdidos
anyNA(pisa2)

head(pisa2)

#Empezamos a trabajar con nuestra nueva matriz de datos


#--------VARIABLE 34--------
#Agrupamiento de items
names(pisayak)
items34<-pisayak[,38:42]
head(items34[1:5,1:5])

#Renombramos las etiquetas de respuesta
levels(items34)<-c("Completamente en desacuerdo",
                   "En desacuerdo",
                   "De acuerdo",
                   "Completamente de acuerdo")

#colocar los nombres a los indicadores

names(items34)<-c("Me llevo bien con la mayoria de mis maestras", 
                  "La mayoria de mis profesores estan interesados en mi bienestar",
                  "la mayoria de mis profesores realmente escuchan lo que tengo que decir", 
                  "Si necesito ayuda adicional la recibire de mis maestros",
                  "la mayoria de mis profesores me tratan con justicia")


l34<-likert(items34)

#Generamos el grafico de barras
plot(l34,type="bar",centered=FALSE)

#Grafico de barras con porcentajes
install.packages("plyr")
library(plyr)

plot(l34,type="bar",centered=TRUE, plot.percents=TRUE)


#Grafico de barras ordenado
plot(l34,group.order = colnames(items34))

#Grafico de densidad
likert.density.plot(l34,facet=TRUE,bw=0.5, 
                    legend = "Gráfico de densidad")

#gráfico de calor
plot(l34, type="heat")


#------FIN DEL SCRIPT--------



