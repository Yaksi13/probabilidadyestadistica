
#generar numero aleatorios para una muestra de 35 personas en una 
#población de 73 alumnas/os del 5to semestre de la LEP BENV

sample(x, side, replace=True/FALSE)

#Ejemplo
sample(1:73,35, replace = FALSE)
sample(1:70,34, replace=FALSE)


#Ejercicios

#1.1- Calcula el tamaño de muestra para una poblacion de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educación Primaria de la BENV.

sample(1:83,39, replace = FALSE)

#1.2.- Una vez que obtengas el tamaño de la muestra, 
#selecciona el número de lista de las personas que formaran
#parte de la muestra.

#1.3.- Crea un vector llamado muestra con los números de 
#lista de las personas que forman parte de la muestra.

muestra<-c (42, 30, 65, 36, 12, 40, 64, 61, 73,  3, 26, 71, 74,
           15, 56, 17, 63, 77, 55, 76,  1, 46, 23, 43,  6, 33,
           70, 31, 68, 38, 29, 72, 79, 62, 19, 35, 22, 75, 20)

#2.- Repite el ejercicio anterios ahora para una poblacion
# de 90 alumnas y alumnos de integran el segundo año de la
#licenciatura en Educación Primaria de la BENV.

sample(1:90,42, replace = FALSE)

#3.- Determina el número e identifíca a las personas que participarán
#en un estudio de seguimiento de egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.
muestraDOS <-c( 12, 82, 89, 81,  6,  4, 58, 73, 67, 88, 70,  8, 52,
                 75, 21, 76,  5, 85, 74, 51, 49, 44, 77, 37, 42, 63,
                  2, 53, 83, 87, 79, 66, 39, 23, 13, 47, 38, 71, 19,
                 29, 59, 34)
#Primaria: 78 personas egresadas.

sample(1:78,36, replace = FALSE)

#Preescolar: 84 personas egresadas.
sample(1:84,38, replace = FALSE)

#Física: 35 personas egresadas.
sample(1:35,18, replace = FALSE)

#Telesecundaria: 83 personas egresadas.
sample(1:83,21, replace = FALSE)

#Especial: 25 personas.
sample(1:35,13, replace = FALSE)




