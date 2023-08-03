# Session 11

# Intervalos de confianza sigma conocida y desconocida

# Desviación estándar de la población conocida

# Xbarra (+-) Z*EE


# Ejemplo con Sigma conocida

x <- c(48.16,37.92,49.17,42.22,52.64,61.46,46.82,48.59,51.35,51.45,50.82,
       52.68,23.78,46.94,58.84,41.86,61.83,43.88,54.86,61.69)

inter_media_z <- function(x, varianza = var(x), nivel_conf = 0.95) {
  z <- qnorm((1 - nivel_conf)/2, lower.tail = F)
  xbarra <- mean(x)
  eex <- sqrt(varianza/length(x))
  c(xbarra - z*eex, xbarra + z*eex)
                                                                   }

inter_media_z(x)

# Ejemplo con sigma desconocida
# Se usa t de student

inter_media_t <- function(x, varianza = var(x), nivel_conf = 0.95) {
  gl <- length(x) - 1
  t <- qt((1 - nivel_conf)/2, gl, lower.tail = F)
  xbarra <- mean(x)
  eex <- sqrt(varianza/length(x))
  c(xbarra - t*eex, xbarra + t*eex)              
}

inter_media_t(x)

