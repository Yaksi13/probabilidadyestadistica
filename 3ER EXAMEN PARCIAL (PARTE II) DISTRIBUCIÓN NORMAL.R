#Examen parte 2
#Diapositiva 8
#A
pnorm(2.5)
pnorm(40,mean=30, sd=4, lower.tail=TRUE)

#B
#manual
pnorm(-2.25)
pnorm(21,mean=30, sd=4, lower.tail=TRUE)

#C
#x=30
pnorm(0)

#x=35
pnorm(1.25)
pnorm(35,mean=30, sd=4, lower.tail=TRUE) - pnorm(30,mean=30, sd=4, lower.tail=TRUE) 


#DIAPOSITIVA 10
#Ejercicio para examen 
#Encontrar: 
#a) P( x < 75)
pnorm(75,mean=45, sd=2, lower.tail=TRUE)
pnorm(15)

#b) P( x > 13)
pnorm(13,mean=45, sd=2, lower.tail=TRUE)
pnorm(-16)

#c) P(60 < x < 82).
pnorm (7.5)
pnorm (18.5)
pnorm(60,mean=45, sd=2, lower.tail=TRUE) - pnorm(82,mean=45, sd=2, lower.tail=TRUE) 

#DIAPOSITIVA 11
n=1000
hist(rnorm(n,500,100),20, col= "blue")
abline(v=585, col=2)
#Planteamiento del problema 
#Es P( X < 585) > 70%?
pnorm(585,mean=500, sd=100)
(0.8023375)*(100)
#Interpretacion: Timmy obtuvo una puntuación mejor que el 80.23% de los
#estudiantes que tomaron el examen y será admitido en esta
#universidad.

#DIAPOSITIVA 12
#a) Genera el gráfico con n=2600.
n2=2600
hist(rnorm(n2,1000,100),20, col= "pink")
abline(v=1185, col=3)

#b) Plantea el problema y realiza los cálculos de la probabilidad.
#Es P( X < 1185) > 90%?
pnorm(1185,mean=1000, sd=100)
(0.9678432)*(100)
#c) Interpreta el resultado.
#Tuve una puntuación mejor que el 90% de los estudiantes que tomaron el examen.

#Prueba de hipótesis / T-test / Ejercicio
set.seed(10)
x <- rnorm(100,10) # Creación de una variable aleatoria de media 10
Media <- 10
test <- t.test(x, mu=Media) # Comparación de la media muestral con la media
print(test)
