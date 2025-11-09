#1.Una función que reciba dos números y retorne verdadero si ambos son pares, falso para todos los demás casos. 
#Muestre un ejemplo de cómo llamar a la función y muestre el retorno. 20 Puntos.

pares <- function(n1, n2){
  if(n1 %% 2 ==0 && n2 %% 2 ==0){
    return(TRUE)
  }else{
    return(FALSE)
  }
}

cat("Los números pares",pares(3,8))


#2.Una función que reciba un número ya sea de dos o tres cifras y devuelva la suma de ellas. 
#Para el caso de que se llame con el número 123 devolvería 6, ya que es la suma de 1+2+3=6. 
#Muestre un ejemplo de cómo llamar a la función y muestre el retorno.  30 Puntos.
# La función recibe un número (num) que puede ser de dos o tres cifras.


suma_numeros <- function(num) {
  
  cadena <- as.character(num)
  cifras <- strsplit(cadena, split = "")[[1]]
  suma_cifras <- sum(as.numeric(cifras))
  return(suma_cifras)
}

suma_numeros(123)