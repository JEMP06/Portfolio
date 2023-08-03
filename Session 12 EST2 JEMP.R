# Session 12

# Prueba de Hipotesis de 2 muestras con varianza igual

library(BSDA)

M <- c(2,4,9,3,2)
V <- c(3,7,5,8,4,3)

t.test(x = M, y = V, sigma.x = M, sigma.y = V, conf.level = 0.90, var.equal = T)



