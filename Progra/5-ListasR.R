#5-ListasR
#1. Crear una lista sencilla con los siguientes datos:
  la_lista<-list(nombre="Roberto", edad=32, funcionario=TRUE)
  print(la_lista)
#2. Acceda por nombre al campo edad.
  la_lista$edad
  
#3. Acceda por índice al campo edad.
  la_lista[2]
  
#4. Acceda con doble corchete al campo nombre.
  la_lista[["nombre"]]
  
#5. Modifique el campo edad, con el siguiente script:
    la_lista$edad<-45
  print(la_lista)
  
#6. Modifique la lista para agregar un nuevo elemento a la estructura de la lista:
    la_lista$ciudad<-"Cartago"
  print(la_lista)

#7. Elimine un elemento de la lista con el siguiente script:
    la_lista$estudiante<-NULL
  print(la_lista)
  
#8. Las listas pueden contener otras listas, pruebe el siguiente script:
    lista_anidada <- list(nombre="Luis", notas = list(ciencias=97, Sociales=98))
  
#9. Pruebe ahora el siguiente script:
    lista_anidada$notas$ciencias
  
#10. Pruebe el siguiente script para combinar listas:
    lista1 <- list(a=1, b=2)
  lista2 <- list(c=3, d=4)
  lista_combinada <- c(lista1, lista2)
  print(lista_combinada)
  
#11. Es posible convertir una lista en un vector, pruebe lo siguiente:
    lista_simple <- list(1,2,3,4)
  unlist(lista_simple)