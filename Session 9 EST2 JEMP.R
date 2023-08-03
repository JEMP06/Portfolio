# Session 9
# ANOVA cuando se tienen 3 o más grupos de datos
# Vienen de una distribución normal

library(stats)

prod1 <- c(58, 64, 55, 66, 67)
prod2 <- c(58, 69, 71, 64, 68)
prod3 <- c(48, 57, 59, 47, 49)
datos <- data.frame(prod1, prod2, prod3)

modelo <- aov(prod1 ~ prod2 + prod3, data = datos)
summary(modelo)

# Forma 2:

produccion <- c(prod1, prod2, prod3)
Metodos <- rep("prod1", times = length(prod1))
Metodos
Metodos <- rep(c("prod1","prod2","prod3"),
  times = c(length(prod1), length(prod2), length(prod3)))
Metodos
Prod.Met <- data.frame(produccion, Metodos)
Prod.Met

TablaAnoval <- aov( data = Prod.Met, formula(produccion ~ Metodos))

summary(TablaAnoval)
boxplot(prod1, prod2, prod3)


