#DIAPOSITIVA 36 

# Probabilidad de escoger una respuesta de 5 posibles
p= 1/5
# Espacio muestral (12 preguntas en total)
n=12
#Probabilidad de tener 4 respuestas correctas elegidas aleatoriamente
k= 4
#Función en R
dbinom(4, size=12, prob=0.2)

#Interpretación: La probabilidad de que ocurran cuatro respuestas correctas es de 0.1328 

#DIAPOSITIVA 37
#Probabilidad de tener 4 o menos respuestas correctas

# Otra forma más sencilla de calcular la probabilidad
sum(dbinom(0:4, 12, 1/5))
#Interpretación: La probabilidad es muy alta

#Diapositiva 38
#1.- ¿Cuál es la probabilidad de que 2 o 3 preguntas sean respondidas correctamente?
sum(dbinom(2:3, n, p))
#Interpretación: La probabilidad es media

#2.- Supongamos que la empresa Apple fabrica el iPhone 11S con una probabilidad de

kiPhone11=1
niPhone11=25 
piPhone=0.005

dbinom(kiPhone11, size= niPhone11, piPhone )
#InterpretaciÃ³n: La probabilidad de encontrar un iPhone 11S defectuoso es baja

#Diapositiva 40
# Probabilidad de que 35 alumnos lleguen en
#15 minutos a la entrada de la escuela
# x= número de alumnos
# lamda= tiempo de llegada.
x=35
lamda=15
dpois(35,15)
#Interpretación: La probabilidad de que lleguen 35 alumnos en 15 minutos a la entrada es de
#0.0000431 es muy baja casi nula

# Probabilidad de que 50 alumnos lleguen en
#15 minutos a la entrada de la escuela
# x= número de alumnos
# lamda= tiempo de llegada.
x2=50
lamda2=15
dpois(x2,lamda2)
#La probabilidad de que lleguen 50 alumnos en 15 minutos es de 0.000000000000641, es decir es muy baja casi imposible de que suceda

#DIAPOSITIVA 41
#1.- ¿Cuál es la probabilidad de que a la escuela lleguen 34 alumnos en 5 minutos?
x3=34
lamda3=5
dpois(x3,lamda3)
#La probabilidad es muy baja

#2.-¿Cuál es la probabilidad de que a la salida de la escuela, se encuentren 60 alumnos en
#5 minutos?
x4=60
lamda4=5
dpois(x4,lamda4)
#La probabilidad es muy baja

#3.- ¿Cuál es la probabilidad de que a la salida de la escuela, se encuentren 120 alumnos
#en 5 minutos?
x5=120
lamda5=5
dpois(x5,lamda5)
#La probabilidad es casi nula

