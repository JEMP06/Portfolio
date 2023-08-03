# Primer Caso de Analisis
# Libro Estadística para Administración y Economía 10 / Pag 33 (63 del PDF) / 7

# Un restaurante de Florida emplea cuestionarios en los que pide a sus 
# clientes que evalúen el servicio, la calidad de los alimentos, los 
# cocteles, los precios y la atmósfera del restaurante. Cada uno de estos 
# puntos se evalúa con una escala de óptimo (O), muy bueno (V), bueno (G),
# regular (A) y malo (P). Emplee la estadística descriptiva para resumir 
# los datos siguientes respecto a la calidad de los alimentos. ¿Qué piensa
# acerca de la evaluación de la calidad de los alimentos de este restaurante?

# Cargar paquetes:

library(ggplot2)
library(dplyr)
library(plyr)

# Creamos conjunto de datos:

x <- c("G","O","V","G","A","O","V","O","V","G","O","V","A","V","O","P","V","O","G","A","O","O","O","G","O","V","V","A","G","O","V","P","V","O","O","G","O","O","V","O","G","A","O","V","O","O","G","V","A","G")
class(x)
summary(x)

# Analisis Descriptivo:

x <- factor(x)
Calidad <- summary(x)
class(x)

DF <- data.frame(Calidad)
View(DF)

hist(Calidad,
     col= 'blue',
     border = 'black',
     main = 'Calidad En Alimentos',
     xlab = 'Calificación',
     ylab = 'Cantidad')

# Listas:

a <- c("O")
b <- c("V")
C <- c("G")
d <- c("A")
e <- c("P")

a <- factor(O)
b <- factor(V)
C <- factor(G)
d <- factor(A)
e <- factor(P)

class()

lista.1 <- list("a", "b", "c", "d", "e")
lista.1 <- list(Optimo = "a", Muy Bueno = "b", Bueno = "c", Regular = "d", Malo = "e")
summary(lista.1)









