#Práctica ciclos y condicionales de R Progra 1
#1-Condicionalesprogra1

#a. Determine si un número es cero, positivo o negativo.
i <- 0

if (i < 0) {
print("El número es menor a 0") 
}else if(i == 0){
  print("El número es igual a 0")
}else{
  print("El número es mayor a 0")
}

#b. Determinar cuál de dos números es mayor. 
a <- 2
b <- 5

if (a < b) {
  cat("El número", a, "es menor a ", b) 
}else if(a == b){
  cat("El número", a, "es igual a ", b)
}else if(a > b){
  cat("El número", a, "es mayor a ", b)
}

#c. Determine si un número es par o impar
n1 <- 5
div <- n1 %% 2

if(div == 0){
  print("El número es par")
}else{
  print("El número es impar")
}

#d. Determinar si es posible que la persona vote, la edad para votar es 18 años
edad <- 17

if (edad < 18) {
  cat("La persona no puede votar") 
}else if(edad >= 18){
  cat("La persona puede votar")
}

#e. Clasifique una nota de 0 a 10 según categorías
#>= 9 Excelente
#>=7 y <9 Bueno
#>=5 y <7 Suficiente
#<5 Reprobado

nota <- 8.5

if (nota >= 9) {
  cat("La nota es excelente") 
}else if(nota >= 7){
  cat("La nota es buena")
}else if(nota >= 5){
  cat("La nota es suficiente")
}else if(nota < 5){
  cat("El estuiante reprobó")
}

#f. Determinar si un año es bisiesto o no. Un año es bisiesto si es divisible
#por 4 y no por 100, excepto si es divisible por 400.
anho <- 366
anho4 <- anho %% 4
anho100 <- anho %% 100
anho400 <- anho %% 400

if (anho4 == 0 && anho100 == 0) {
  print("No es bisiesto") 
}else if(anho4 == 0 && anho100 != 0){
  print("El año es bisiesto")
} else if(anho400 == 0){
  print("El año es bisiesto")
} else{
  print("El año no es bisiesto")
}

#g. Clasificar temperaturas.
#Menor a 0: Muy Frío
#Entre 0 y 15: Frío
#Entre 16 y 25: Templado
#Mayor a 25: Caliente
temperatura <- 15

if (temperatura < 0) {
  print("Muy Frío") 
}else if(temperatura <= 15){
  print("Frio")
} else if(temperatura <= 25){
   print("Templado")
}else{
  print("Caliente")
}

#h. Determinar si un número es múltiplo de 3 ó 5 ó ambos.
multiplo <- 9
m3 <- multiplo %% 3
m5 <- multiplo %% 5
  
if (m3 == 0 && m5 == 0) {
  print("El número es multiplo de ambos") 
}else if(m3 == 0 && m5 != 0) {
  print("El número es mútiplo de tres")
} else if(m3 != 0 && m5 == 0){
  print("El número es multiplo de cinco")
} else{
  print("No es múltiplo")
}

#i. Leer las medidas de los lados de un triangulo y determinar que tipo es:
#  todos los lados iguales es equilátero, dos lados iguales es isósceles y
#  todos los lados diferentes es escaleno.

lado1 <- 2
lado2 <- 4
lado3 <- 4

if (lado1 == lado2 && lado1 == lado3 && lado3 == lado2) {
  print("El triángulo es equilátero") 
}else if(lado1 != lado2 && lado1 != lado3 && lado3 != lado2) {
  print("El triángulo es escaleno")
} else{
  print("El triángulo es isóceles")
}

#j. Crear una mini calculadora que lea dos números enteros, el operador y
#realice la operación.
 
ni1 <- as.numeric(readline(prompt = "Ingrese el primer número: "))
ni2 <- as.numeric(readline(prompt = "Ingrese el segundo número: "))
operador <- readline(prompt = "Ingrese el operaor que desea utilizar:\n
                     Suma = 1\n
                     Resta = 2\n
                     Multiplicación = 3\n
                     División = 4\n")
operador <- as.numeric(operador)

if (operador == 1) {
  suma <- ni1 + ni2 
  cat(ni1, "+", ni2, "=", suma) 
}else if(operador == 2) {
  resta <- ni1 - ni2 
  cat(ni1, "-", ni2, "=", resta) 
} else if(operador == 3){
  multiplicacion <- ni1 * ni2 
  cat(ni1, "*", ni2, "=", multiplicacion) 
}else if(operador == 4){
  division <- ni1 / ni2 
  cat(ni1, "/", ni2, "=", division) 
} else{
  print("El operador digitado no está dispnible")
}

#k. Clasificar a la persona según la edad en años:
#0 a 2: Bebé
#3 a 12: Niño
#13 a 17: Adolescente
#18 a 64: Adulto
#Mayor a 65: Adulto mayor

edad <- 17

if (edad <= 2) {
  print("Bebé") 
}else if(edad <= 12){
  print("niño")
}else if(edad <= 17){
  print("Adolecente")
}else if(edad <= 64){
  print("Adulto")
}else{
  print("Adulto Mayor")
}

#Ejercicios While
#a) Imprimir los números del 1 al 14
n1 <- 1
while (n1 <= 14) {
  print(paste("El numero es:", n1))
  n1 <- n1 + 1
}

#b) Contar de forma regresiva de 20 a 1
n2 <- 20
while (n2 >= 1) {
  print(paste("El numero es:", n2))
  n2 <- n2 - 1
}

#c) Sumar los números de 1 a 100
n3 <- 1
suma <- 0
while (n3 <= 100) {
  suma <- suma + n3
  n3 <- n3 + 1
  print(paste("La suma es:", suma))
}

#d) Encontrar el primer número divisible por 7 a partir de un número dado
n4 <- 12

while (n4 %% 7 != 0) {
  n4 <- n4 + 1
  if (n4 %% 7 == 0)
    print(paste("El primer número divisible por 7 es:", n4))
}

#e) Mostrar los números pares de 1 al 20
n5 <- 1
while (n5 <= 20) {
  if (n5 %% 2 == 0) {
    print(n5)
  }
  n5 <- n5 + 1
}
#f) Dado un numero mostrar su tabla de multiplicación de 1 a 10

contador <- 1
multiplicador <- 5

while (contador <= 10){
  multiplicacion <- contador * multiplicador
  cat(contador, "*", multiplicador, "=", multiplicacion,"\n") 
  contador = contador + 1
}

#g) Sumar números hasta que la suma sea mayor o igual a 100

nui1 <- as.numeric(readline(prompt = "Ingrese el primer número: "))
nui2 <- as.numeric(readline(prompt = "Ingrese el segundo número: "))

resultado <- nui1 + nui2

while (resultado < 100) {
   nui3 <- as.numeric(readline(prompt = "Ingrese otro número: "))
   resultado = resultado + nui3
   if(resultado <= 99){
     cat(resultado, "es inferior a 100")
   }else if(resultado == 100){
     cat(resultado, "es igual a 100")
   }else {
     cat(resultado, "es superior a 100")
   }
}

#h) Contar cuántos números naturales consecutivos (empezando desde 1) se
#deben sumar para llegar a un número objetivo (por ejemplo, 50).

inicio <- 1
resultado <- 0
contador_sumas <- 0
meta <- as.numeric(readline(prompt = "Ingrese el número al que se quiere llegar: "))

while (resultado < meta){
  resultado <- resultado + inicio
  inicio = inicio + 1
  contador_sumas = contador_sumas + 1
  if(resultado >= meta){
    cat("Se necesitó un total de", contador_sumas,"sumas para llegar al número", meta)
  }
}

#i) Mostrar los múltiplos de 3 a 30

numero <- 1 

while (numero <= 30) {
  division <- numero %% 3
  if(division == 0){
    cat("El número", numero,"es multiplo del 3\n")
  }
  numero <- numero + 1 
}

#Ejercicios For
#a) Imprimir los números del 1 al 14 

for (x in 1:14){
  print(x)
} 

#b) Imprimir los números pares del 1 al 20 

for (x in 1:20){
  npar <- x %% 2
  if (npar == 0){
    cat("El número", x, "es par\n")
  }
}

#c) Contar cuántos números entre 1 y 50 son divisibles por 4

contador_cuatro <- 0

for (x in 1:50){
  ndiv4 <- x %% 4
  if (ndiv4 == 0){
    contador_cuatro <- contador_cuatro + 1
  }
  if (x == 50){
    cat("El total de números divisibles entre cuatro son:", contador_cuatro)
  }
}

#d) Elevar al cuadrado los números del 1 a 23

for (x in 1:23){
  elevar <- x ^ 2
  cat("Elevar", x, "al cuadrados es", elevar, "\n")
}

