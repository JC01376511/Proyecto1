#Actividad 5

#Cargar dataset en R
data("mtcars")
View(mtcars)

mtcars$mpg = NULL
kM <- kmeans(mtcars,3)
kM


