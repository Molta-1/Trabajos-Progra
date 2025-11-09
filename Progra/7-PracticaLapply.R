#7-PracticaLapply
# 1. Suponga la siguiente lista:
  numeros <- list(a = 1, b = 2, c = 3, d = 4)
  exponente <- 2
  
# A. Use la función lapply para obtener el cuadrado de cada número
  ncuadrado <- lapply(numeros, function(x) x ^ exponente) 
  
# B. Use la función sapply para obtener el mismo resultado, pero en formato vector.
  ncvector <- sapply(numeros, function(x) x ^ exponente) 
  
# 2. Suponga la siguiente lista
  palabras <- list("hola", "mundo", "R", "es", "genial")

# A. Use las funciones lapply y sapply para obtener la longitud de cada palabra.
  conteo_palabras <- lapply(palabras, function(x){
    letras <- strsplit(x, split = "")[[1]]
    return(length(letras))
  } )
  
  conteop_vector <- sapply(palabras, function(x){
    letras <- strsplit(x, split = "")[[1]]
    return(length(letras))
  } )
  
# 3. Suponga el siguiente data frame:
    df <- data.frame(
      a = 1:5,
      b = c(2, 4, 6, 8, 10),
      c = c(5, 3, 4, 2, 1)
    )
# A. Use las funciones lapply y sapply para obtener la media de cada columna.
  media <- lapply(df, mean)
    
  media_vector <- sapply(df, mean)
  
# 4. Suponga la siguiente lista:
    nombres <- list("Pedro", "Lucía", "Ana", "Carlos")

# Use la función sapply para extraer la primera letra de cada palabra.
    primer_letra <- sapply(nombres, function(x) {
      substr(x, 1, 1)
    })
    
# Suponga la siguiente lista
  lista_nums <- list(
    c(1, 6, 8),
    c(4, 5, 7, 10),
    c(0, 2, 3),
    c(9, 11, 6)
  )

# A. Use las funciones lapply y sapply para contar los elementos mayores a 5 en cada vector.
  mayor_cinco <- lapply(lista_nums, function(x) x>5)
  
  mayor5_vector <- sapply(lista_nums, function(x) x>5)
  
# 5. Suponga la siguiente lista:
    valores <- list(c(3, 5, 7), c(10, 15, 12), c(4, 4, 4))
    
# A. Haga una función personalizada y use lapply para aplicarle dicha función a cada vector.
    igual4 <- function(x) x==4
    filtro <- lapply(valores, igual4)
    