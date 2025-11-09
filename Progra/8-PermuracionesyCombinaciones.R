#8-PermuracionesyCombinaciones
#1. Resuelva lo siguiente en R. Muestre el código correspondiente.
install.packages("gtools")
library(gtools)
#A. Hay 6 estudiantes. ¿De cuántas formas se pueden ordenar 3 para un podio?
choose(6,3)

#B. ¿Cuántos grupos de 2 personas se pueden formar con 4 estudiantes?
choose(4,2)

#C. ¿Cuántas contraseñas diferentes de 4 letras se pueden formar con las letras (J, R, Q, A y B)?
permutations(n = 5, r = 4, v = c("J", "R", "Q", "A", "B"))

#D. De una canasta de 8 frutas distintas, ¿Cuántas formas hay de elegir 3 para hacer una ensalada? 
#(el orden no importa)
ensalada <- permutations(n = 8, r = 3, v = c("Manzana", "Fresa", "Pera", "Papaya", "Melón", "Piña", "Sandía", "Uvas"))
print(ensalada)

#E. ¿Cuántas formas diferentes de vestirse se pueden formar si se dispone de 4  camisas, 
#3 pantalones y dos pares de zapatos?
outfits <- combinations(n = 9, r = 3, v = c("Camisa1", "Camisa2", "Camisa3", "Camisa4", "Pantanlón1", "Pantanlón2", "Pantanlón3", "Zapato1", "Zapato2"))
print(outfits)

#F. Una aerolínea tiene 5 pilotos y debe asignar 2 para un vuelo para dos cargos
#diferentes: capitán y copiloto. ¿Cuántas formas hay de asignarlos?
pilotos <- permutations(n = 5, r = 2, v = c("Piloto1", "Piloto2", "Piloto3", "Piloto4", "Piloto5"))
print(pilotos)

#G. Un profesor debe hacer grupos de 4 para resolver unos ejercicios, el grupo es de 23
#¿De cuántas maneras puede hacerlo?
choose(23,4)

#H. ¿Cuántas combinaciones de números son posibles para la lotería, si hay una serie
#de tres dígitos y el número de dos dígitos?
99 * 999

#I. Si hay 6 cantantes para un concierto gratis, ¿Cuántas formas diferentes hay de
#ordenarlos para que salgan al escenario a cantar?
concierto <- permutations(n = 6, r = 6, v = c("Cantante1", "Cantante2", "Cantante3", "Cantante4", "Cantante5", "Cantante6"))
print(concierto)