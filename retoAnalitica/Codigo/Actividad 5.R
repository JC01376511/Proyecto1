#Actividad 5
install.packages("factoextra")
library(factoextra)
library(ggplot2)

#Cargar dataset en R
data("mtcars")
View(mtcars)

kM <- kmeans(mtcars,3)
kM

#Graficación de clusters
fviz_cluster(kM,mtcars)

#Escalando datos
mtcarsEscalado <- scale(as.matrix(mtcars[, 1:4]))
kM1 <- kmeans(mtcarsEscalado,4)
fviz_cluster(kM1,mtcarsEscalado)

#Gráfica matriz de correlación
library(corrplot)
corrCar <- cor(mtcars)
corrplot(corrCar,method = "ellipse")

