#2-Funciones_pr1

#1. Crear cuatro funciones diferentes, una para cada una de las cuatro operaciones
#fundamentales: suma, resta, multiplicación y división. Llamar a cada función con
#diferentes argumentos.

suma <- function(n1,n2){
  return(n1 + n2)
}

print(suma(2,4))

resta <- function(n1,n2){
  return(n1 - n2)
}

print(resta(6,3))

mult <- function(n1,n2){
  return(n1 * n2)
}

print(mult(6,2))

div <- function(n1,n2){
  return(n1 / n2)
}

print(div(8,2))

#2. Crear un función que tome dos números como argumentos y devuelva el mayor de ellos.
comparar <- function(n1,n2){
  if(n1 > n2){
    return(TRUE)
  }else
    return(FALSE)
}  

cat("¿El primer número es mayor al segundo?",comparar(4, 6))

#3. Crear la función cuadrado que dado x como argumento, retorne x*x.
cuadrado <- function(x){
  return(x * x)
}

cat("El cuadrado del número es", cuadrado(4))

#4. Para dos números a y b, si se verifica lo siguiente a %% b == 0 se puede concluir que a es
#múltiplo de b. Escriba la función correspondiente.

multiplo <- function(a,b){
  if(a %% b == 0){
    return("Son múltiplos")
  }else
    return("No son multiplos")
}


cat(multiplo(4, 2))

#5. Crear una función que reciba como argumento una calificación entre 0 y 100 y devuelva
#un mensaje según estas reglas:
#Excelente, si la calificación es mayor o igual a 90.
#Bien: Si está entre 89 y 80
#Suficiente si está entre 70 y 79
#Insuficiente para los demás casos.

nota <- function(n1){
  if(n1 >= 90){
    return("excelente")
  }else if(n1 >= 80){
    return("buena")
  }else if(n1 >= 70){
    return("suficiente")
  }else
    return("insuficiente")
}

cat("La nota es",nota(71))

#6. Escribir la función que suma los números comprendidos entre dos enteros. Si la función
#recibe 1 y 5, devolvería 15 ya que es la suma de 1+2+3+4+5=15. Use un ciclo for dentro de
#la función.

suma_enteros <- function(num1, num2) {
  if (!is.numeric(num1) || !is.numeric(num2)) {
    stop("Error: Ambos argumentos deben ser números.")
  }

  num1 <- as.integer(num1)
  num2 <- as.integer(num2)

  if (num1 > num2) {
    temp <- num1
    num1 <- num2
    num2 <- temp
  }
  
  suma_total <- 0

  for (numero in seq(num1, num2)) {
    suma_total <- suma_total + numero
  }
  
  return(suma_total)
}


cat("La suma entre 1 y 5 es:", suma_enteros(1, 5), "\n")

