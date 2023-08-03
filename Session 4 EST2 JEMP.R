# Prueba de Hipótesis

ZValCal <- (23-22)/(10/sqrt(75))
ZValCal
# Obtenemos el valor Z Crítico
qnorm(0.01/2)
#Obtenemos la probabilidad de Valor p
(1-pnorm(0.8660254))*2

# Instalamos el paquete BSDA

install.packages("BSDA")
library(BSDA)

z.test(x = Cofee$Weight, alternative = "less", sigma.x = 0.18, mu)

# Prueba de Hipotesis

Valor_Crítico <- qnorm(0.01/2)
p_valor <- (1-pnorm(ZValCal))*2

if (p_valor <= Valor_Crítico) {
  print("Se rechaza Ho")
} else {
  print("No se rechaza Ho")
}
