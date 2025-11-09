#10-POO

#Objeto: Camion
#Clase: Vehículo
#Atributos: Color rojo, cuatro ruedas, motor
#Métodos: Acelerar, frenar, girar, retroceder


#Clase en S3
#Creación de objeto con sus atributos
camion <- list(color = "Rojo", ruedas = 4)
class(camion) <- "Camion"

camion2 <- list(color = "Rojo", ruedas = 2)
class(camion2) <- "Camion"

#Creación de los métodos
print.Camion <- function(x){
  if (x$ruedas < 4){
    cat("El camion no puede arrancar porque solo posee", x$ruedas,"ruedas \n")
  }
  cat("El color del camion es:", x$color, "\nCantidad de ruedas:", x$ruedas,"\n")
}

print.Camion2 <- function(x){
  if (x$ruedas < 4){
    cat("El camion no puede arrancar porque solo posee", x$ruedas,"ruedas \n")
  }
  cat("El color del camion es:", x$color, "\nCantidad de ruedas:", x$ruedas,"\n")
}

#Mostrar clase
print(camion2)

#Clase en S4
setClass("OtroCamion",
         slots = list(color = "character", cilindros = "numeric"))
#Creación del objeto
Camion3 <- new("OtroCamion", color = "Verde", cilindros = 6)

#Método
setMethod("show", "OtroCamion", function(object){
  cat("Color del camion:", Camion3@color, "\nCantidade de cilindros:", Camion3@cilindros, "\n")
})

#Mostrar objeto
Camion3

#Clase en R6
#Instalación de librería R6
install.packages("R6")
library("R6")

#Creación de clase con parámetros
UltimoCamion <- R6Class("UltimoCamion", 
    public = list(
     color = NULL,
     cilindros = NULL,
     initialize = function(color, cilindros){
       self$color <- color
       self$cilindros <- cilindros
     },
     datos = function(){
       cat("El camion es de color", self$color, "y posee", self$cilindros, "cilindros")
     }
    )
  )

#Creación de objetos
Camion4 <- UltimoCamion$new(color = "Negro", cilindros = 8)

#Uso
Camion4$datos()