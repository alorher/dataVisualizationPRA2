# Cargamos los paquetes R que vamos a usar
library(ggplot2)
library(dplyr)

#Carga de los datos:

#VaersData <- read.csv("C:/Users/ALVARO/Desktop/Visualizacion/PRA2/COVID-19 World Vaccine Adverse Reactions/2021VAERSDATA.csv",header=TRUE, comment.char="#")
attach(VaersData)


#No es necesario cambiar ningun nombre de atributo.


# Verificamos la estructura del conjunto de datos
str(VaersData)
filas=dim(VaersData)[1]


#Estadísticas básicas
summary(VaersData)
class(VaersData)

# Estadísticas de valores vacíos --> NO HAY VALORES VACIOS
colSums(is.na(VaersData))
colSums(VaersData=="")


# Tomamos valor "Desconocido" para los valores vacíos de la variable "country"
VaersData$VAERS_ID[VaersData$STATE==""]="Desconocido"


# Después de los cambios, analizamos la nueva estructura del conjunto de datos
str(VaersData)





