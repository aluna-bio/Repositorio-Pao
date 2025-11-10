#Hola Andy

# Hola Pao

#HOLAAAAAAAA



# ¿QUE ONDAA?

# por que no me contestas

# ok

datos <- read.csv("01_Datoscrudos/dataset_categorical.csv")
View(datos)

unique(datos$Age) #Te desgloza los datos unicos de la columna, todas las edades que estan sin que se repita

mean(datos$Age,na.rm = TRUE) #Quitamos los NA para que no los tome en cuenta, sin esto da un error.

is.na(datos) #Te dice en que posiciones hay NA en tu data frame

pdf("03_Resultados/Boxplot_Age.pdf") #Pone todo lo que creas a continuación en un pdf
boxplot(datos$Age[!is.na(datos$Age)]) #de la columna edad selecciona todos aquellos que no son NA con esa variable y hace un boxplot
dev.off() #termina el pdf

jpeg("03_Resultados/Hist_weight.jpeg") #Pone todo lo que creas a continuación en una imagen
hist(datos$Weight[!is.na(datos$Weight)], col= "pink1", border= "brown") #De la columna de peso seleccionar todos aquellos datos que NO SON NA y realizar un histograma, que las barras sean rosas y las lineas cafecitas.
dev.off() #termina la imagen

colors() #Te da los colores básicos en R

#CICLO FOR EN BASE DE DATOS
for (i in 1:nrow(datos)) {
  print(paste("El",datos$ID[i],"tiene un peso de: ",datos$Weight[i],"y una masa muscular de: ", datos$MuscleMass[i]))
}

datos1 <- datos[2:4]
datos1

for (i in 1:ncol(datos1)) {
  pdf("03_Resultados/Boxplot_datos1.pdf") 
  boxplot(datos1[[i]][!is.na(datos1[[i]])]) 
  dev.off() 
}

