#4-DFprogra

#1. Crear los siguientes vectores
nombres <- c("Ana", "Luis", "Carlos", "Marta")
edades <- c(23, 35, 30, 29)
ciudades <- c("Madrid", "Barcelona", "Valencia", "Sevilla")

#2. Crear un data frame
df <- data.frame(Nombre = nombres, Edad = edades, Ciudad = ciudades)
print(df)

#3. Ver las primeras 6 filas
head(df)

#4. Ver las últimas filas
tail(df,2)

#5. Mostrar la estructura y resumen del data frame
str(df)
summary(df)

#6. Seleccionar una columna
df$Edad

#6.1) Filtrar filas por condición
subset(df, Edad > 30)

#6.2) Agregar una nueva columna
df$Puntaje <- c(90, 80, 75, 88)
print(df)

#6.2) Ordenar por una columna
df_ordenado <- df[order(df$Edad), ]
print(df_ordenado)

#6.4) Eliminar una columna
df$Ciudad <- NULL
print(df)

#6.5) Mostrar valores únicos en una columna
unique(df$Nombre)


#7) Crear un data frame que contenga la información de 108 productos: nombre, precio y disponibilidad

num_productos <- 108

nombre <- paste("Producto_", 1:num_productos, sep = "")

precio <- round(runif(num_productos, min = 10, max = 500), 2)

disponibilidad <- sample(c(TRUE, FALSE), size = num_productos, replace = TRUE, prob = c(0.8, 0.2))

df_productos <- data.frame(
  Nombre = nombre,
  Precio = precio,
  Disponible = disponibilidad
)

#8) Acceder a los nombres de los productos
df_productos$Nombre

#9) Agregar una columna con la categoría del producto
categorias_simuladas <- sample(
  c("Electrónica", "Alimentos", "Ropa", "Hogar"),
  size = num_productos,
  replace = TRUE
)

df_productos$categoria <- categorias_simuladas

print(head(df_productos))

#10) Filtrar solo los productos con precio mayor a 80
precio_filtro <- df_productos[df_productos$Precio>80,]

#Un ejemplo en donde se puede utilizar los dataframes es en la tabla de resultados de futbol
#Así podemos ver quienes tienen mas victorias, empates, derrotas, 