#Actividad 4 Juan Carlos Flores García A01376511 y Daniela Román Cruz A01799267

#Abrir archivo CSV
getwd()
setwd("/Users/juanc/Documents/Dataset")
getwd()
data1 = read.csv("./GlobalLandTemperaturesByCountry.csv")
View(data1)

#Subconjunto México
summary(data1$Country)
mexico <- subset(data1,data1$Country == "Mexico")
summary(mexico)

#Contar y eliminar NA de México
sum(is.na(mexico$AverageTemperature))
sum(is.na(mexico$AverageTemperatureUncertainty))
sapply(data1,function(x)sum(is.na(x)))

#Operaciones de México
promedio1 <- mean(mexico$AverageTemperature)
max(mexico$AverageTemperature)
unique(mexico$AverageTemperature)

#Subconjunto Argentina
summary(data1$Country)
argentina <- subset(data1,data1$Country == "Argentina")
summary(argentina)

#Contar y eliminar NA de Argentina
sum(is.na(argentina$AverageTemperature))
sum(is.na(argentina$AverageTemperatureUncertainty))
sapply(data1,function(x)sum(is.na(x)))

newArg <- argentina[!is.na(argentina$AverageTemperature), ]
sum(is.na(newArg$AverageTemperature))
sapply(newArg,function(x)sum(is.na(x)))

#Operaciones de Argentina
promedio2 <- mean(newArg$AverageTemperature)
max(newArg$AverageTemperature)
unique(newArg$AverageTemperature)

#Subconjunto de Cuba
summary(data1$Country)
cuba <- subset(data1,data1$Country == "Cuba")
summary(cuba)

#Contar y eliminar NA de Cuba
sum(is.na(cuba$AverageTemperature))
sum(is.na(cuba$AverageTemperatureUncertainty))
sapply(data1,function(x)sum(is.na(x)))

newCuba <- cuba[!is.na(cuba$AverageTemperature), ]
sum(is.na(newCuba$AverageTemperature))
sapply(newCuba,function(x)sum(is.na(x)))

#Operaciones de Cuba
promedio3 <- mean(newCuba$AverageTemperature)
max(newCuba$AverageTemperature)
unique(newCuba$AverageTemperature)

promedios <- c(promedio1, promedio2, promedio3)
plot(promedios)
