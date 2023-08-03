# Session 15

# Prueba de Kruskall - Wallis
# Pagina #715 del Lind
# ~ es virgulilla

# RESPUESTA O CONCLUSIÓN GENERAL: 
# Valor p <= Alfa                    Por lo tanto: Se rechaza Ho
# Valor crítico <= Calculdo W/H      Por lo tanto: Se rechaza Ho
# Ho: Sigma1 = Sigma2 = Sigma3       Ha: Sigma1 ≠ Sigma2 ≠ Sigma3  

# Ejercicio Ejemplo
# Con nivel de significancia de 0.05

datos <- data.frame(
  tipo = c(rep("Finanzas", 7), rep("Manufactura", 8), rep("Ing", 6)),
  calificaciones = c(56,39,48,38,73,50,62,103,87,51,95,68,42,107,89,42,
                     38,89,75,35,61))
View(datos)
kruskal.test(calificaciones ~ tipo, data = datos)
# Kruskal-Wallis chi-squared = 5.7468, df = 2, p-value = 0.05651
# Por lo tanto: No se rechaza Ho

# Ejercicio Autoevaluación 18.6 Lind
# Con nivel de significancia de 0.01

datos2 <- data.frame(
  sucursal = c(rep("Englewood", 6), rep("WestSide", 5), rep("GreatNorthem", 5),
           rep("Sylvania", 6)),
  indices = c(208,307,199,142,91,296,91,62,86,91,80,302,103,319,340,180,
              99,116,189,103,100,131))
View(datos2)
kruskal.test(sucursal ~ indices, data = datos2)
# Kruskal-Wallis chi-squared = 16.028, df = 18, p-value = 0.5906
# Se rechaza Ho


# Ejercicio 21 Pagina # 714 Lind
# Con nivel de significancia de 0.05

datos3 <- data.frame(
  muestra = c(rep("Uno", 5), rep("Dos", 6), rep("Tres", 5)),
  valor = c(50,54,59,59,65,48,49,49,52,56,57,39,41,44,47,51))
View(datos3)
kruskal.test(muestra ~ valor, data = datos3)
# Kruskal-Wallis chi-squared = 15, df = 13, p-value = 0.3074
# Se rechaza Ho

# Ejercicio 22 Pagina # 715 Lind
# Con nivel de significancia de 0.01

datos4 <- data.frame(
  muestra1 = c(rep("Uno", 6), rep("Dos", 5), rep("Tres", 5)),
  valor1 = c(21,29,35,45,56,71,15,17,22,27,31,38,40,44,51,53))
View(datos4)
kruskal.test(muestra1 ~ valor1, data = datos4)
# Kruskal-Wallis chi-squared = 15, df = 15, p-value = 0.4514
# No se rechaza Ho

# Chi cuadrada Bondad de Ajuste

Observado <- c(13,33,14,7,36,17)
Esperado <- c(20/120,20/120,20/120,20/120,20/120,20/120)

qchisq(0.05, 5, lower.tail = F)







