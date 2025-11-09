#11-CargaDatos
# Paso 1
datos_personas <- data.frame(
  Nombre = c("Ana", "Luis", "María", "Pedro"),
  Edad = c(30, 25, 35, 28),
  Pais = c("México", "Italia", "España", "Chile")
)
write.csv(datos_personas, "Personas.csv", row.names = FALSE)

# Paso 2
setwd("C:/Progra/personas") 

# Paso 3
datos1 <- read.csv("Personas.csv")

# Paso 4
library(readr)
datos2 <- read_csv("Personas.csv")

# Paso 5
View(datos1)
View(datos2)
str(datos2)

# Paso 6
mis_datos <- data.frame(
  ID = 1:12,
  Producto = rep(c("A", "B", "C", "D"), 3),
  Unidades = sample(100:500, 12, replace = TRUE),
  Ciudad = rep(c("NY", "LA", "SF"), 4)
)
write.csv(mis_datos, "MisDatos.csv", row.names = FALSE)
datos_propios <- read_csv("MisDatos.csv")
View(datos_propios)

# Paso 7
datos_ventas <- data.frame(
  Producto = c("Camisa", "Pantalón", "Zapatos", "Blusa"),
  Precio = c(250, 400, 800, 324),
  Cantidad = c(10, 5, 2, 6)
)
write.csv(datos_ventas, "Ventas.csv", row.names = FALSE)

# Paso 8
ventas <- read_csv("Ventas.csv")

# Paso 9
ventas$Total <- ventas$Precio * ventas$Cantidad
print(ventas)

# Paso 10
datos_propios$CostoFijo <- 50
datos_propios$IngresoTotal <- datos_propios$Unidades * datos_propios$CostoFijo
datos_propios$Margen <- datos_propios$IngresoTotal * 0.15
print(datos_propios)