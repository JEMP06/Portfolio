# Session 14 

# Dos vias (Tipo y Mes)

jun <- c(7,9,12)
jul <- c(11,12,14)
ago <- c(13,11,8)
sep <- c(8,9,7)
oct <- c(9,10,13)

ventas <- c(jun, jul, ago, sep, oct)
ventas
tipo <- rep(c("jun", "jul", "ago", "sep", "oct"), times = c(length(jun), 
    length(jul), length(ago), length(sep), length(oct)))
clas <- rep(c("Seco", "Normal", "Graso"), times = 5)
clas
tab1 <- data.frame(ventas, tipo, clas)
tab1
View(tab1)
mod2 <- aov(data = tab1, ventas~tipo+clas)
mod2
anova(mod2)
summary(mod2)








