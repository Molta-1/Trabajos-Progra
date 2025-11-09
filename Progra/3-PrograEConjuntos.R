#3-PrograEConjuntos
#1)
uni <- c(1:25)

#2)
a <- c(1:13)
b <- c(9:25)

#3)
vacio <- c()

#4)
union(a,b)

#5)
intersect(a,b)

#6) 
setdiff(a,b)

#7)
setdiff(b,a)

#8)
setequal(a,b)

#9.a)
union_v <- union(a,vacio)

setequal(union_v, a)

#9.b)
inter_uni <- intersect(uni,a)

setequal(inter_uni, a)

#9.c)
union_con <- union(a, uni)

setequal(union_con, uni)

#9.d)
inter_va <- intersect(b, vacio)

setequal(inter_va, vacio)

#9.e)
uniona <- union(a, a)

setequal(uniona, a)

#9.f
intera <- intersect(a,a)

setequal(intera, a)

#10) 
#1. Gestión de Requisitos de Software (Unión e Intersección)
#Este ejemplo es común en el desarrollo de software, donde necesitas identificar 
#qué usuarios tienen acceso a ciertas funciones.

#2. Análisis de Preferencias de Clientes (Diferencia de Conjuntos)
#Este ejemplo es común en marketing o análisis de datos de clientes
#donde se necesita segmentar grupos basados en sus acciones.

#11)
colores_A <- c("rojo", "azul", "verde", "amarillo")
colores_B <- c("verde", "naranja", "azul", "morado")
colores_C <- c("negro", "verde", "rojo", "blanco")

#12)
union(colores_A, colores_B)

#13)
intersect(colores_A, colores_B)

#14)
setdiff(colores_A, colores_B)

#15)
int_cayb <- intersect(colores_A, colores_B)

intersect(int_cayb, colores_C)

#16)
A <- c(1, 2, 3, 4, 5, 6)
B <- c(4, 5, 6, 7, 8)
C <- c(6, 7, 8, 9, 10)


#16.a)
union_b_c <- union(B, C)

#16.b)
solo_A <- setdiff(A, union_b_c)

#16.c)
union_a_c <- union(A, C)

#16.d)
solo_B <- setdiff(B, union_a_c)


#16.e)
union_a_b <- union(A, B)

#16.f) 
solo_C <- setdiff(C, union_a_b)

#16.g)
resultado_exclusivo <- union(solo_A, solo_B)
resultado_final <- union(resultado_exclusivo, solo_C)

#17)

#17.a)
interseccion_ab <- intersect(A, B)

#17.b) 
interseccion_ac <- intersect(A, C)

#17.c)
interseccion_bc <- intersect(B, C)

#17.d) 
union_parcial <- union(interseccion_ab, interseccion_ac)

#17.e)
resultado_final <- union(union_parcial, interseccion_bc)
    