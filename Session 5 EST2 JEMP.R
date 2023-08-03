# Session 5
# Hipotesis Nula Ejercicio Una muestra

install.packages("BSDA")
install.packages("readxl")
install.packages("visualize")
library(BSDA)
library(readxl)
library(visualize)
vol <- c(151,153,152,152)
t.test(x=vol, mu = 150, conf.level = 0.95)
visualize.t(stat = c(-4.899,4.899),df=3,section = "tails")
?visualize.t
m <- pt(q = -4.899, df = 3) + pt(q = 4.899, df = 3, lower.tail = F)
library(readxl)

if (m <= 4.899) {
  print("Se rechaza la Hipotesis Nula")
} else {
  print("No se rechaza la Hipotesis Nula")
}

#Excel Prubea de Hipotesis?
AirRating <- read_excel(file.choose())
t.test(AirRating)
sd(AirRating$Rating)
mean(AirRating$Rating)

t.test(AirRating, mu = 7, alternative = c("less"), conf.level = 0.99)
