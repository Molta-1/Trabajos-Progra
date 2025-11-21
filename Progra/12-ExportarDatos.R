#12-Guardar Datos

#1. Haga un data frame que contenga los datos de personas con nombre, apellido, lugar de residencia y edad.
nombres <- c("Juan", "Miguel", "Ana", "Susana")
apellido <- c("Mata", "Castro", "Solano", "Marín")
edad <- c(43,23,54,34)
residencia <- c("Madrid", "Barcelona", "Valencia", "Sevilla")

df <- data.frame(Nombre = nombres, Apellido = apellido, Edad = edad, Lugar_Residencia = residencia)
#2. Almacene los datos del data frame en un archivo .csv
write.csv(df, "df.csv", row.names = FALSE)

#3. Cambie el directorio de trabajo para almacenar el archivo en otro lugar del disco duro.
setwd("C:/Progra")

#4. Almacene el data frame en un archivo .xlsx
install.packages("writexl")
library(writexl)

write_xlsx(df, "df.xlsx")

#5. Escriba un programa en R que le solicite al usuario datos acerca de mascotas: animal: Gato
#o Perro, Nombre, Edad y los almacene en un data frame y al finalizar el ingreso escriba los
#datos del data frame en archivo .csv y .xlsx.
Animal <- as.character(readline(prompt = "Ingrese la raza de la mascota (perro o gato): "))
Nombre <- as.character(readline(prompt = "Ingrese el nombre de la mascota: "))
Edad <- as.numeric(readline(prompt = "Ingrese la edad de la mascota: "))
    
datosm <- data.frame(Raza = Animal, Nombre = Nombre, Edad = Edad)

mascota <- datosm
write.csv(mascota, "mascota.csv", row.names = TRUE)
write_xlsx(mascota, "mascota.xlsx")
