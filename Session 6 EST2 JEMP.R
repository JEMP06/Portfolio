# Session 6
# Prueba F

# Generar los grupos que vamos a comaprar

Carretera25 <- c(52,67,56,45,70,54,64)
Carretera75 <- c(59,60,61,51,56,63,57,65)

View(Carretera25)
help("var.test")
summary(Carretera25)
class(Carretera25)

qf(0.95,6,7, lower.tail = T) # Obtenemos el valor crítico
1 - pf(4.2264,6,7, lower.tail = F)
pf(4.2264,6,7, lower.tail = F) # Obtenemos el p valor

var.test(Carretera25,Carretera75)

var.test(Carretera25,Carretera75,
         alternative = c("greater"), conf.level = 0.90)

# alternative = c("greater") significa que se trabaja en el lado derecho
# alternative = c("less") significa que se trabaja en el lado izquierdo
# Lo anterior para hipotesis alternativa
# Conf.level es el nivel de confianza = 1-alfa
# Si p<= alfa entonces se rechaza
# lower tail = Cola inferior (Izquierda)
#

