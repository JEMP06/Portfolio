# Session 13

# ANOVA dos factores = ANOVA dos vias 

# Solo se pueden dos vías con interacción (conductor y ruta+)

d <- c(18,17,21,22)
s <- c(16,23,23,22)
o <- c(21,21,26,22)
z <- c(23,22,29,25)
f <- c(25,24,28,28)

# Tabla

# Col 1

tiempo <- c(d,s,o,z,f)
tiempo

# Col 2

conductor <- rep(c("d", "s", "o", "z", "f"), times = c(length(d), 
    length(s), length(o), length(z), length(f)))

conductor
ruta <- rep(c("c6", "we", "hs", "r59"), times = 5)
ruta
?data.frame
tab <- data.frame(conductor, ruta, tiempo)
View(tab)
"Conductor es factor 1, ruta factor 2, tiempo es la variable independiente"

# Modelo de ANOVA con efectos principales + (efectos de conductor y ruta)

mod1 <- aov(data = tab, tiempo~conductor+ruta)
mod1
anova(mod1)
summary(mod1)

# La suerte, azar, o termino de error es el error cuadratico medio
# Resultan significativos la ruta y el conductor
# Se deden tomar en cuenta sobre todo el conductor

"Ho: N1 = N2 = N3 = N4
H : No todas las medias de tratamiento son iguales"

a <- 0.05
f1 <- 9.785
f2 <- 7.935
p1 <- 0.000934
p2 <- 0.003508

p1 <= a
p2 <= a

# False, se rechaza entonces hay una diferencia en el tiempo de recorrido
# medio a lo largo de las cuatro rutas





