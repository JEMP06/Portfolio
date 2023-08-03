# Session 8

install.packages("BSDA")
install.packages("visualize")
install.packages("readxl")

library(BSDA)
library(visualize)
library(readxl) 

vol <- c(151, 153, 152, 152)
t.test(x = vol, mu = 150, conf.level = 0.95)

visualize.t(stat = c(-4.899, 4.899), df = 3, section = "tails")
help("visualize.t")
m <- pt(q = -4.899, df = 3) + pt(q = 4.899, df = 3, lower.tail = F)
   

if (m <= 4.899) {
  print("Se rechaza Ho")
} else {
  print("No se rechaza Ho")
}

# Considerando la siguiente prueba d ehipotesis: Ho>=45,Ha<45
# Se usa una muestra de 36. Identificar el p-value y sacar conclusión
# con cada uno de los siguientes. Nivel de significancia = 1%
# a: x = 44 , s = 5.2
# b: x = 43 , s = 4.6
# c: x = 46 , s = 5.0

# a:

valort = ((44 - 45)/(5.2 / sqrt(36)))
critico <- qnorm(0.01)
critico

if (valort <= critico) {
  print("Se rechaza Ho")
} else {
  print("No se rechaza Ho")
}

# b:

valorp = ((43 - 45) / (4.6 / sqrt(36)))
critico2 <- qnorm(0.01)
critico2

if (valorp <= critico2) {
  print("Se rechaza Ho")
} else {
  print("No se rechaza Ho")
}

# c:

valorp1 = ((46 - 45) / (5 / sqrt(36)))
critico3 <- qnorm(0.01)
critico3

if (valorp1 <= critico3) {
  print("Se rechaza Ho")
} else {
  print("No se rechaza Ho")
}




