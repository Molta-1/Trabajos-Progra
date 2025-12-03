#14-GraficosGGPlot
#1. Dados los siguientes datos, crear un gráfico de dispersión.
df <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c(3, 5, 2, 8, 7)
)
#Instrucciones para crear el gráfico
library(ggplot2)

ggplot(df, aes(x = x, y = y)) +
  geom_point() +
  ggtitle("Dispersión con ggplot2")

#2. Dados los siguientes datos crear un histograma
datos <- data.frame(valor = rnorm(100))
ggplot(datos, aes(x=valor)) + 
  geom_histogram()

#3. Dados los siguientes datos, crear un gráfico de barras.
categorias <- data.frame(
  grupo = c("A", "B", "A", "C", "B", "B", "C", "A")
)

ggplot(categorias, aes(x=as.factor(grupo) )) +
  geom_bar(color = "steelblue", fill=rgb(0.1,0.4,0.5,0.7) )