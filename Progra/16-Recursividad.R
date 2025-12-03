#16-Recursividad
#1. Haga un programa en R que le solicite al usuario una palabra o frase y verifique si es
#palíndromo y se lo indique al usuario. Use la recursividad para resolver el problema.

es_palindromo <- function(frase) {
  frase_limpia <- tolower(frase)
  frase_limpia <- gsub("[^a-z]", "", frase_limpia)
  return(es_palindromo_recursivo(frase_limpia))
}

es_palindromo_recursivo <- function(cadena) {
  if (nchar(cadena) <= 1) {
    return(TRUE)
  }
  primer_caracter <- substr(cadena, 1, 1)
  ultimo_caracter <- substr(cadena, nchar(cadena), nchar(cadena))

  if (primer_caracter != ultimo_caracter) {
    return(FALSE) 
  } else {
    subcadena <- substr(cadena, 2, nchar(cadena) - 1)
    
    return(es_palindromo_recursivo(subcadena))
  }
}

interactuar_usuario <- function() {
  cat("Ingrese una palabra o frase para verificar si es palíndromo: \n")
  entrada_usuario <- readline()
  
  if (nchar(entrada_usuario) == 0) {
    cat("No se ingresó ninguna frase.\n")
    return()
  }
  
  resultado <- es_palindromo(entrada_usuario)
  
  if (resultado) {
    cat(paste0(entrada_usuario, " es un palíndromo\n"))
  } else {
    cat(paste0(entrada_usuario, " NO es un palíndromo.\n"))
  }
}

interactuar_usuario()