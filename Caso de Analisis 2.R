# Segundo Caso de Analisis
# Libro Estadística para Administración y Economía 10 / Pag 33 (63 del PDF) / 8

# A continuación se muestran datos de 55 miembros de un equipo de béisbol. Cada 
# observación indica la posición principal que juegan los miembros del equipo:
# pitcher (P), catcher (H), primera base (1), segunda base (2), tercera base (3),
# shortstop (S), left fiel (L), center field (C) y right field (R).

# a. Resuma usando una distribución de frecuencia y otra de frecuencia relativa.
# b. ¿Cuál es la posición que ocupan más miembros del equipo?
# c. ¿Cuál es la posición que ocupan menos miembros del equipo?
# d. ¿Qué posición de campo (L, R, C) es la que juegan más miembros del equipo?
# e. Compare las posiciones L, R, y C con las posiciones 1, 2, 3 y S


# Cargar paquetes:

library(ggplot2)
library(dplyr)
library(plyr)

# Creamos conjunto de datos:

y <- c("L", "P", "C", "H", "2", "P", "R", "1", "S", "S", "1", "L", "P", "R", "P",
       "P", "P", "P", "R", "C", "S", "L", "R", "P", "C", "C", "P", "P", "R", "P",
       "2", "3", "P", "H", "L", "P", "1", "C", "P", "P", "P", "S", "1", "L", "R",
       "R", "1", "2", "H", "S", "3", "H", "2", "L", "P")
class(y)
summary(y)

y <- factor(y)
Players <- summary(y)
class(y)

DF8 <- data.frame(Players)
View(DF)

hist(Players,
     col= 'red',
     border = 'black',
     main = 'BaseBall Team',
     xlab = 'Posición',
     ylab = 'Número')

# Medidas de Tendencia

mode <- function(y) {
  return(as.factor(names(which.max(table(y)))))
}
mean(y)




