#Tema: tablas de frecuencias
data (iris)

names (iris)

dim (iris)

str (iris)

anyNA (iris)

iris$Species

typeof (iris)

table_PL<-as.data.frame (table(PL = iris$Petal.Length))
tabla_PL<-as.data.frame (table(PL = iris$Petal.Length))

tabla_PL

transform (tabla_PL,
           freqAC=cumsum (Freq),
           Rel= round(prop.table(Freq),3),
           RelAC=round(cumsum(prop.table(Freq)),3))

tabla_clases<-as.data.frame(table
                            (Petal.length = factor
                              (cut(iris$Petal.Length,
                                   breaks = 9))))
   
tabla_clases

transform(tabla_clases,
          freqAc=cumsum(Freq),
          Rel= round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))
