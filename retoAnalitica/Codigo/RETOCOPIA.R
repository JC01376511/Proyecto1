#RETO A01799267 y A01376511

#abrir tabla
getwd()
setwd("/Users/lxptx/Downloads")
getwd()
data1 = read.csv("./CasoHuracanes.csv")
View(data1)

#Cuartiles
cuartil_wind <- quantile(data1$wind)
print(cuartil_wind)

cuartil_pressure <- quantile(data1$Pressure)
print(cuartil_pressure)

cuartil_co2 <- quantile(data1$CO2)
print(cuartil_co2)

cuartil_population <- quantile(data1$Population)
print(cuartil_population)

#Eliminar datos nulos
sum(is.na(data1$Clave))
sum(is.na(data1$ID))
sum(is.na(data1$Ocean))
sum(is.na(data1$Name))
sum(is.na(data1$Fecha))
sum(is.na(data1$year))
sum(is.na(data1$Month))
sum(is.na(data1$Time))
sum(is.na(data1$Status))
sum(is.na(data1$Latitude))
sum(is.na(data1$Longitud))
sum(is.na(data1$Wind))
sum(is.na(data1$Pressure))
sum(is.na(data1$CO2))
sum(is.na(data1$Population))
sapply(data1,function(x)sum(is.na(x)))

#Estadística
#WIND
median(data1$Wind) #mediana
mean(data1$Wind) #Promedio

#PRESSURE
median(data1$Pressure)
mean(data1$Pressure)

#CO2
median(data1$CO2)
mean(data1$CO2)

#POPULATION
median(data1$Population)
mean(data1$Population)

#Cuartiles
cuartil_wind <- quantile(data1$wind)
print(cuartil_wind)

cuartil_pressure <- quantile(data1$Pressure)
print(cuartil_pressure)

cuartil_co2 <- quantile(data1$CO2)
print(cuartil_co2)

cuartil_population <- quantile(data1$Population)
print(cuartil_population)

#Gráficas

#variable wind
plot(data1$Wind)
hist(data1$Wind,col="pink")

#añosxwind
plot(data1$Wind, data1$year, type ="p", main="Years x wind", xlab = "Wind", ylab = "Year", col="pink", lwd = 2)

#añosxpresion
plot(data1$Pressure, data1$year, type ="p", main="Pressure x years", xlab = "Pressure", ylab = "Year", col="pink", lwd = 2)

#co2xpopulation
plot(data1$Population, data1$CO2, type ="p", main="CO2 x Population", xlab = "Population", ylab = "CO2", col="pink", lwd = 2)

cuartil_co2 <- quantile(data1$CO2)
print(cuartil_co2)

cuartil_ocean <- quantile(data1$CO2)
print(cuartil_co2)