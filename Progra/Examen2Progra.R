#Examen 2 de Programación1 Sebastián Calvo

#Defina un Data Frame para almacenar los siguientes datos: 15 Pts.
#Nombres: Alicia, Arturo, Silvia, Pedro
#Edades: 34, 56, 78, 23
#Ciudades: Granada, Orlando, Roma, La Paz
#Numero de casa: 34, 51, 78, 92

Nombres <- c("Alicia", "Arturo", "Silvia", "Pedro")
Edades <- c(34, 56, 78, 23)
Ciudades <- c("Granada", "Orlando", "Roma", "La Paz")
Numero_Casa <- c(34, 51, 78, 92)

df <- data.frame(Nombre = Nombres, Edad = Edades, Ciudad = Ciudades, NumCasa = Numero_Casa)

#1.1 Añada lo siguiente: 5 Pts.
#Nombre: Enrique
#Edad: 43
#Ciudad: Almería
#Número de casa:83

df <- rbind(df, c("Enrique", 43, "Almería", 83))
print(df)           

#2.Dada la siguiente lista
nombre <- "Felipe"
edad <- 18
notas <- c(7, 8.0,7.5)
aprobado <- TRUE
alumno <- list(Nombre = nombre, Edad = edad, Notas = notas, Aprobado = aprobado)

#Escriba en R el código para:

#A.Acceder a la edad 10 Pts
FiltrarEdad <- alumno[2]
print(FiltrarEdad)

#B.Acceder a las notas 10 Pts
FiltrarNotas <- alumno[3]
print(FiltrarNotas)

#C.Acceder a la segunda nota 10 Pts
FiltrarNotas <- alumno$Notas[2]
print(FiltrarNotas)

#Defina una matriz en R llamada MatrizExamen y que almacene 25 números aleatorio . 10 Pts.
MatrizExamen <- matrix(sample(1:25, 25, replace=T), nrow=5)

#4.Dado un vector llamado vector_enteros escriba el código en R para
#aplicarle la función raíz cuadrada a
#cada uno de los elementos de vector_enteros. 10 Pts.
vector_enteros <- c(25, 9, 20, 40, 100)
raices_cuadradas <- sqrt(vector_enteros)
print(raices_cuadradas)

#5.Escriba el código en R para resolver lo siguiente:
#¿Cuántos grupos de 2 gatos se pueden formar con 8 gatos?  5Pts
grupos_totales <- choose(8,2)

#6.Dada la siguiente Matriz
notas <- c(5.5, 7.0, 9.5,
           8.0, 6.0, 4.0,
           7.5, 9.0, 7.5,
           6.0, 7.5, 5.5)

matriz_notas <- matrix(notas, nrow = 4, ncol = 3, byrow = TRUE)

#A.Asígnele nombres a las filas y columnas de forma que representen las calificaciones
#de estudiantes en tres exámenes. 15 Pts
examenes <- c("examen1", "examen2", "examen3")
nombres <- c("Alicia", "Arturo", "Silvia", "Pedro")

colnames(matriz_notas) <- examenes
rownames(matriz_notas) <- nombres
print(matriz_notas)

#B.Obtenga el promedio por estudiantes. 10 Pts.
promedioAlicia <- sum(matriz_notas[1,]) / 3
promedioArturo <- sum(matriz_notas[2,]) / 3
promedioSilvia <- sum(matriz_notas[3,]) / 3
promedioPedro <- sum(matriz_notas[4,]) / 3

cat("El promedio de ", nombres[1], "es de:",promedioAlicia)
cat("El promedio de ", nombres[2], "es de:",promedioArturo)
cat("El promedio de ", nombres[3], "es de:",promedioSilvia)
cat("El promedio de ", nombres[4], "es de:",promedioPedro)
