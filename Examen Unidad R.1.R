#Vas a trabajar con la matriz de datos
#"millas" que se te proporciona a continuación.

millas<-datos::millas

#1.- Explora la matriz de datos millas 
#valor: 5 puntos por comando correcto.
?millas
dim ( millas ) # dimensión
names ( millas) # nombres de las variables
str ( millas ) # tipo de variable
anyNA ( millas ) # Identificar si hay datos perdidos: True o False
typeof ( millas ) # Tipo de matriz de datos
View ( millas )
millas_1 <- as.data.frame ( millas )
summary ( millas_1 )
install.packages ( " modeest " )
library ( modeest )
#2.- Determina las medidas estadísticas descriptivas
#y de variablidad
#Importante: no calcules los errores.
#Valor: 5 puntos por comando correcto.
# la función que utilizaremos para identificar la moda
# es mfv ()
mfv ( millas_1$fabricante)
mfv ( millas_1$modelo)
mfv ( millas_1$cilindrada)
mfv ( millas_1$anio )
mfv ( millas_1$cilindros) 
mfv ( millas_1$transmision)
mfv ( millas_1$traccion)
mfv ( millas_1$ciudad)
mfv ( millas_1$autopista)
mfv ( millas_1$combustible)
mfv ( millas_1$clase)
# calculamos la varianza de cada una de las
# cuantitativas
var ( millas_1$cilindrada)
var ( millas_1$anio)
var ( millas_1$cilindros)
var ( millas_1$ciudad)
var ( millas_1$autopista)
# calcularemos la desviación estándar
# variables cuantitativas
sd ( millas_1$cilindrada)
sd ( millas_1$anio)
sd ( millas_1$cilindros)
sd ( millas_1$ciudad)
sd ( millas_1$autopista)
# coeficiente de variacion
# vamos a instalar el paquete FinCal y abrimos la librería
install.packages ( " FinCal " )
library ( FinCal )
coefficient.variation (sd = sd( millas_1$cilindrada),
                       avg = mean(millas_1$cilindrada))
coefficient.variation (sd = sd( millas_1$anio),
                       avg = mean(millas_1$anio))
coefficient.variation (sd = sd( millas_1$cilindros),
                       avg = mean(millas_1$cilindros))
coefficient.variation (sd = sd( millas_1$ciudad),
                       avg = mean(millas_1$ciudad))
coefficient.variation (sd = sd( millas_1$autopista),
                       avg = mean(millas_1$autopista))
# Instalaremos el paquete tidyverse y abriremos la libreria
install.packages ( " tidyverse " )
install.packages ( " RColorBrewer " )
# se abren las librerias 
library( tidyverse )
library( RColorBrewer )

#3.- Construye:

#A) Un gráfico de dispersión con las variables cilindrada y autopista
#el color lo indica la variable clase. 
#Valor Total: 20 puntos
#(10 puntos por comando activado correcto).
#(10 punto por la generación del gráfico).

#DISPERSION
dispersion_1<-ggplot(millas_1, aes (x=cilindrada, y=autopista, color=clase))+
  geom_point ()
dispersion_1

#B) Un gráfico boxplot con las variables transmisión y ciudad
#El color lo indica la variable transmisión    
#El título del gráfico es Transmisión de autos en ciudad
#Coloca la etiqueta "Transmisión" en el eje x 
#Coloca la etiqueta "Ciudad" en el eje y 
#Valor Total: 20 puntos
#(10 puntos por comando activado correcto).
#(10 punto por la generación del gráfico del gráfico).

# BOXPLOT
boxplot <- ggplot (millas_1 , aes ( factor (transmision),
                                    ciudad , fill = transmision)) +
  geom_boxplot () +
  ggtitle ( " transmision de autos en ciudad" ) +
  xlab ( " transmision " ) +
  ylab ( "ciudad " )
#para visualizar el gráfico
boxplot

#C) Un gráfico de barras para la variable "cilindros" 
#Valor Total: 20 puntos
#(10 puntos por comando activado correcto).
#(10 punto por la generación del gráfico).

attach (millas_1)
tabla_1<-table(millas_1$cilindros)
#visualizacion de tabla
tabla_1
# Especificamos la paleta de colores que vamos a utilizar
color = c ( " antiquewhite" , " aquamarine3 " , " burlywood1 ", "darksalmon" )
#Construimos el gráfico de barras
barplot (tabla_1, xlab= "cilindros", ylab= "frecuencias", 
         main= "gráfico de barras de cilindros", col= color)
