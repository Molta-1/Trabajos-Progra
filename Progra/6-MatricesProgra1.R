#6-MatricesProgra1
#1. Crea una matriz de 3 filas y 4 columnas con los números del 1 al 12. Los números se deben
#llenar por columnas y deben ser generados de forma aleatoria.

matriz <- matrix(sample(1:12, 12, replace=T), nrow=3)

#2. Asígnele nombres a las columnas y a las filas respectivamente: Fila1..Fila3 y Col1…Col4.
rownames(matriz) <- c("Fila1", "Fila2", "Fila3")
colnames(matriz) <- c("Col1", "Col2", "Col3", "Col4")

#3. Extraiga e imprima el valor de la segunda fila y tercera columna de la matriz.

matriz[2,]
matriz[,3]

#4. Extraiga e imprima la primera fila.
matriz[1,]

#5. Crea dos matrices de 2x2
#A <- matrix(c(1,2,3,4), nrow = 2)
#B <-matrix(c(5,6,7,8), nrow =2)
#A. Calcule A+B, A*B (producto elemento a elemento), y A %% B (producto matricial).

A <- matrix(c(1,2,3,4), nrow = 2)
B <-matrix(c(5,6,7,8), nrow =2)

suMa <- A + B

Multi <- A * B 

producto <- A %*% B

#6. Use la función apply() para calcular la suma de cada fila y de cada columna de la matriz del
#ejercicio 1.

sumaFilas <- lapply(matriz, sum)

#7. A partir de la matriz creada en el ejercicio 1, crea una matriz lógica que indique que
#elementos son mayores que 6

malogica <- matriz >= 6

#8. Crea una matriz cuadrada de 3x3 calcule el determinante y la inversa, use las funciones
#det() y solve().

M <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3)
Determinante_M <- det(M)
Inversa_N <- solve(M) #Da error por el tipo de matriz que es

#9. Mediante un filtrado condicional extraiga todos los elementos de la matriz original que
#sean pares.

parMatriz <- matriz %% 2 == 0

#10. Suponga que se cuenta con la siguiente matriz para representar goles en partidos:
goles <- matrix(c(
  2, 1, # Partido 1: A vs B
  0, 3, # Partido 2: B vs C
  1, 1, # Partido 3: C vs A
  4, 2 # Partido 4: A vs C
), ncol = 2, byrow = TRUE)

colnames(goles) <- c("Equipo1", "Equipo2")
rownames(goles) <- paste("Partido", 1:4)

#Extraiga la siguiente información:
#  A. ¿Cuántos goles recibió el equipo C?
golesRC <- goles[2,1] + goles[3,2] + goles[4,1]

#  B. ¿Cuántos goles anotó cada equipo?
golesA <- goles[1,1] + goles[3,2] + goles[4,1]

golesB <- goles[1,2] + goles[2,1]

golesC <- goles[2,2] + goles[3,1] + goles[4,2]
#  C. ¿Cuál fue el equipo más goleador?
cat("El equipo con mas goles anotados fue el equipo A con:", golesA)

#  D. ¿Cuál equipo recibió más goles?
cat("El equipo con mas goles recibidos fue el equipo C con:", golesRC)

#11. Suponga que tiene una matriz donde las filas son equipos y las columnas son jornadas:
# Equipos: A, B, C
# Jornadas: 1 a 4
goles_jornada <- matrix(c(
  1, 2, 0, 3, # Equipo A
  0, 1, 2, 1, # Equipo B
  2, 1, 1, 0 # Equipo C
), nrow = 3, byrow = TRUE)
rownames(goles_jornada) <- c("A", "B", "C")
colnames(goles_jornada) <- paste("Jornada", 1:4)

#Extraiga la siguiente información:
#A. ¿Cuál fue el total de goles anotados por el equipo B?
sumaGB <- sum(goles_jornada[2,])

#B. ¿En qué jornada se anotaron más goles en total?
sumaJor2 <- sum(goles_jornada[,2])
cat("Las jornadas con mas goles fueron las jornadas 2 y 4 ambos con", sumaJor2)

#C. Agregue una columna con el total de goles por equipo.
totalGA <- sum(goles_jornada[1,])
totalGB <- sum(goles_jornada[2,])
totalGC <- sum(goles_jornada[3,])

golestotales <- cbind(goles_jornada, c(totalGA, totalGB, totalGC))

colnames(golestotales)[ncol(golestotales)] <- "Total_Goles"

#D. Es posible determinar cuál equipo fue el más regular. Es un ejercicio simple con un
#concepto denominado desviación estándar. Para ello es posible usar la función
#apply. Investiguen al respecto, pista: determinar la menor desviación estándar.

#12. Crea tu propia matriz para representar los goles en un torneo con 5 equipos, donde cada
#equipo juega contra los otros una vez (partidos únicos).
nombres_equipos <- c("E1_Rojos", "E2_Azules", "E3_Verdes", "E4_Amarillos", "E5_Negros")

goles_anotados <- matrix(
  c(0, 2, 1, 4, 3,
    3, 0, 0, 1, 2,
    2, 1, 0, 5, 0,
    0, 3, 1, 0, 2,
    1, 2, 4, 0, 0),
  nrow = 5, byrow = TRUE,
  dimnames = list(Anotador = nombres_equipos, Receptor = nombres_equipos)
)

print("Matriz de Goles Anotados:")
print(goles_anotados)
#Represente quién anotó a quién y extraiga la siguiente información:
#  A. ¿Cuál fue el partido con más diferencia de goles?
goles_recibidos <- t(goles_anotados)

diferencia_partido <- abs(goles_anotados - goles_recibidos)

diff_upper <- diferencia_partido * upper.tri(diferencia_partido)
max_diff_indice <- which(diff_upper == max(diff_upper), arr.ind = TRUE)

# Extraer nombres y resultado (usando el primer índice encontrado, si hay empate)
fila <- nombres_equipos[max_diff_indice[1, "row"]]
columna <- nombres_equipos[max_diff_indice[1, "col"]]

cat("Partido con más diferencia de goles")
cat("Partido:", fila, "vs", columna, "\n")
cat("Resultado:", goles_anotados[fila, columna], "-", goles_anotados[columna, fila], "\n")
cat("Diferencia (Absoluta):", max(diff_upper), "\n")

#  B. ¿Cuál equipo fue el más efectivo (goles anotados – goles recibidos)?
total_anotados <- rowSums(goles_anotados) 

total_recibidos <- colSums(goles_anotados)

efectividad_df <- data.frame(
  Equipo = nombres_equipos,
  Diferencia_Goles = total_anotados - total_recibidos
)

mas_efectivo <- efectividad_df[which.max(efectividad_df$Diferencia_Goles), ]

cat("El equipo más efectivo es:", mas_efectivo$Equipo, 
    "\ncon una diferencia de:", mas_efectivo$Diferencia_Goles)



#Matrices 2
#1) Suponga el siguiente escenario: En un supermercado se venden 4 productos: Leche, Pan, Arroz y
#Huevos. Las ventas se registran durante 5 días (lunes a viernes). Cada fila representa un día, y cada
#columna un producto

ventas <- matrix(c(
  20, 35, 50, 40, # Lunes
  25, 30, 45, 42, # Martes
  22, 28, 48, 38, # Miércoles
  30, 33, 55, 47, # Jueves
  27, 32, 49, 41 # Viernes
), nrow = 5, byrow = TRUE)
rownames(ventas) <- c("Lunes", "Martes", "Miércoles", "Jueves", "Viernes")
colnames(ventas) <- c("Leche", "Pan", "Arroz", "Huevos")

#A. Realice las siguientes consultas básicas

#1. Mostrar la matriz de ventas.
View(ventas)
ventas

#2. ¿Cuántas unidades se vendieron en total durante la semana?
sum(ventas)

#  3. ¿Cuál producto tuvo más ventas en total?
vLeche <- sum(ventas[,1])
vPan <- sum(ventas[,2])
vArroz <- sum(ventas[,3])
vHuevos <- sum(ventas[,4])
vTotal <- sum(ventas[,5])

cat("El producto con mas ventas en total fue el arroz con", vArroz)
#  4. ¿Qué día tuvo las mayores ventas en total?
vLunes <- sum(ventas[1,])
vMartes <- sum(ventas[2,])
vMiercoles <- sum(ventas[3,])
vJueves <- sum(ventas[4,])
vViernes <- sum(ventas[5,])

cat("El día con mas ventas fue el jueves con", vJueves)

#  5. Mostrar las ventas de “Leche” durante toda la semana.
cat("La leche vendió en toda la semana", vLeche, "unidades")

#B. Realice las siguientes consultas intermedias

#1. Agregar una columna “TotalDia” con la suma de productos vendidos por día.
ventas <- cbind(ventas, TotalDia = c(vLunes, vMartes, vMiercoles, vJueves, vViernes))

#2. Agregar una fila “TotalProducto” con la suma de ventas por producto.
ventas <- rbind(ventas, TotalProducto = c(vLeche, vPan, vArroz, vHuevos, vTotal))

#3. Calcular el promedio de ventas por producto.
pLeche <- mean(ventas[,1])
pPan <- mean(ventas[,2])
pArroz <- mean(ventas[,3])
pHuevos <- mean(ventas[,4])

#4. Mostrar cuáles productos vendieron más de 250 unidades en total.
ventas > 250

#5. Obtener los días donde se vendieron más de 50 unidades de arroz.
ventas[,3] > 50


