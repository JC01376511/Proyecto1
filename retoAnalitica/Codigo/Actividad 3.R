#Actividad 3 - Daniela Roman A01799267, Juan Carlos Flores A01376511

follows <- c(37,519,325,0,182,190,237,547,651,124,436,325,648)

mean(follows) #promedio
median(follows) #mediana
var(follows) #varianza
sd(follows) #desviación


install.packages("modeest")

library(modeest)
mfv(follows)

min(follows) #dato más pequeño
max(follows) #dato más grande 
which.min(follows) #en que "casilla" está el dato menor 
which.max(follows) #en que "casilla" está el dato mayor

plot(follows) #crear la gráfica
hist(follows,col="green") #histograma

summary(follows)
boxplot(follows,col="yellow") #grafico + cuartiles


