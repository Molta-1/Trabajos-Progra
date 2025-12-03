#15-Graficos Cargados

#1.  Dados los siguientes datos que deben estar almacenados en un archivo .scv generar un
#gráfico para el análisis de las ventas de productos.

Dia <- c("Domingo", "Domingo", "Domingo", "Lunes", "Lunes", "Lunes", 
         "Martes", "Martes", "Martes", "Miércoles", "Miércoles", "Miércoles")
Producto <- c("Leche", "Queso", "Huevos", "Leche", "Queso", "Huevos", 
              "Leche", "Queso", "Huevos", "Leche", "Queso", "Huevos")
Ventas <- c(120, 80, 100, 150, 90, 110, 130, 85, 95, 160, 100, 120)

datos_ventas_df <- data.frame(
  Dia = Dia,
  Producto = Producto,
  Ventas = Ventas,
  stringsAsFactors = FALSE
)


archivo <- "datos_de_ventas_R.csv"

write.csv(
  x = datos_ventas_df, 
  file = nombre_archivo, 
  row.names = FALSE,  
  fileEncoding = "UTF-8"   
)

datos_totales <- aggregate(Ventas ~ Dia, data = datos_comestibles, FUN = sum)

datos_comestibles <- read.csv(archivo, encoding = "UTF-8")

datos_comestibles$Dia <- factor(datos_comestibles$Dia, 
                                levels = c("Domingo", "Lunes", "Martes", "Miércoles"))

grafico_comestibles <- ggplot(
  data = datos_comestibles, 
  aes(x = Dia, y = Ventas, fill = Producto) 
) +
  geom_bar(stat = "identity", position = "stack") + 
  geom_text(
    data = datos_totales,
    aes(x = Dia, y = Ventas, label = Ventas),
    inherit.aes = FALSE,
    vjust = -0.5, 
    size = 4,
    color = "black"
  ) +
  
  labs(
    title = "Ventas de Productos Comestibles por Día",
    x = "Día de la Semana",
    y = "Ventas (Unidades o Valor)",
    fill = "Tipo de Producto"
  ) +
  scale_fill_manual(values = c("Leche" = "#00BFC4", "Queso" = "#F8766D", "Huevos" = "#7CAE00")) +
  
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5)) 

print(grafico_comestibles)


#2. Genere un archivo .csv con datos acerca del tema que usted guste y partir de esos datos
#genere un gráfico en R
Mes <- c("Enero", "Enero", "Febrero", "Febrero", "Marzo", "Marzo", "Abril", "Abril")
Categoria <- c("Consolas", "Juegos", "Consolas", "Juegos", "Consolas", "Juegos", "Consolas", "Juegos")
Unidades_Vendidas <- c(50, 300, 65, 350, 40, 280, 80, 420)

datos_ventas_df <- data.frame(
  Mes = Mes,
  Categoria = Categoria,
  Unidades_Vendidas = Unidades_Vendidas,
  stringsAsFactors = FALSE
)

nombre_archivo <- "ventas_videojuegos_R.csv"

write.csv(
  x = datos_ventas_df, 
  file = nombre_archivo, 
  row.names = FALSE, 
  fileEncoding = "UTF-8"
)


datos_analisis <- read.csv(nombre_archivo, encoding = "UTF-8")

datos_analisis$Mes <- factor(datos_analisis$Mes, 
                             levels = c("Enero", "Febrero", "Marzo", "Abril"))

grafico_ventas <- ggplot(
  data = datos_analisis, 
  aes(x = Mes, y = Unidades_Vendidas, fill = Categoria) 
) +

  geom_bar(stat = "identity", position = "dodge") + 
  
  geom_text(                                         
    aes(label = Unidades_Vendidas), 
    position = position_dodge(width = 0.9),
    vjust = -0.5,                                   
    size = 3
  ) +
  
  labs(
    title = "Comparativa de Unidades Vendidas (Videojuegos)",
    subtitle = "Consolas vs. Juegos: Enero - Abril",
    x = "Mes",
    y = "Unidades Vendidas",
    fill = "Producto"
  ) +
  
  scale_fill_manual(values = c("Consolas" = "#0072B2", "Juegos" = "#D55E00")) +
  
  theme_minimal() 

print(grafico_ventas)