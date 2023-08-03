# Primer Caso de Analisis 1
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

Calidad <- factor(x)
est <- summary(Calidad)
df <- data.frame(Calidad, indice = seq_along(x))
ggplot(df, aes(x = x)) + 
  labs ( title = "Caso Analisis 1",
         x = "Calificación",
         y = "Conteo",
         subtitle = "Jorge Enrique Madariaga Puertas",
         caption = "Fuente de datos: R") +
  geom_bar() +
  theme_light()
Summary(est)
median(est)
quantile(est, c(0.5,0.95))
var(est)
sd(est)
IQR(est)





# Segundo Caso de Analisis 2

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

Equipos <- c("L", "P", "C", "H", "2", "P", "R", "1", "S", "S", "1", "L", "P", "R", "P",
       "P", "P", "P", "R", "C", "S", "L", "R", "P", "C", "C", "P", "P", "R", "P",
       "2", "3", "P", "H", "L", "P", "1", "C", "P", "P", "P", "S", "1", "L", "R",
       "R", "1", "2", "H", "S", "3", "H", "2", "L", "P")
class(Equipos)
summary(Equipos)

Equipos.Factores <- factor(Equipos)
dil <- summary(Equipos.Factores)
DataF1 <- data.frame(Equipos, indice = seq_along(Equipos))
ggplot(DataF1, aes(x = Equipos)) +
    labs ( title = "Caso Analisis 2",
             x = "Posición del Jugador",
             y = "Conteo",
             subtitle = "Jorge Enrique Madariaga Puertas",
             caption = "Fuente de datos: R") +
    geom_bar() +
    theme_light()
Summary(dil)
median(dil)
quantile(dil, c(0.5,0.95))
var(dil)
sd(dil)
IQR(dil)

#Dudas:

?var
?sd
?IQR
?median
?quantile
?seq_along
