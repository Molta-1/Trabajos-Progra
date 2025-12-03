#13-Graficos_R
#Utilice las funciones básicas de R para realizar los siguientes ejercicios.
#1. Dados los siguientes datos, crear un gráfico de dispersión. Etiquete los ejes X y Y.
x <- c(1, 2, 3, 4, 5)
y <- c(3, 7, 4, 8, 9)

plot(x, y, type = "b", col = "blue",
     main = "Relación entre X y X^2", xlab = "X", ylab = "Y")

#2. Dados los siguientes datos, crear un histograma para ver la distribución de una variable.
set.seed(123)
datos <- rnorm(100)

hist(datos, col = "lightblue", main = "Histograma", xlab = "Valores", ylab = "Frecuencia")

#3. Dados los siguientes datos crear un gráfico de barras.
categorias <- c("A", "B", "C", "D")
frecuencias <- c(10, 23, 17, 5)

barplot(frecuencias, names.arg = categorias)