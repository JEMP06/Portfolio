#Session 2 EST2
# Objetivo: Graficar histogramas en R
# 1. histogramas con base graphics
# 2. histogramas con ggplot2

# Cargar los paquetes que vamos a usar
library(ggplot2)

#Cargando los datos
data("mtcars")
View(mtcars)

# Haciendo histograma básico
hist(mtcars$hp)

# Editando histograma
hist( mtcars$hp, breaks = 10)
hist (mtcars$hp, breaks = seq(50, 350, 100))
hist (mtcars$hp, breaks = seq(50, 350, 100),
      col= 'green',
      border = 'red',
      main = 'Título',
      xlab = 'Nombre_Variable',
      ylab = 'conteo')

# Cargar ggplot2

# Hacer un histograma en ggplot2
ggplot(data = mtcars, mapping = aes(x = hp)) + 
  geom_histogram(bins = 9)

ggplot(data = mtcars, mapping = aes(x = hp, fill=factor(vs))) +
  geom_histogram(bins = 9, position = 'identity', alpha = 0.8) +
  labs(title = 'Título',
       fill = 'vs motor',
       x = 'caballos de fuerza',
       y = 'conteos',
       subtitle = 'subtítulo',
       caption = 'fuente de los datos: R')

#	Actualizar	librerías	instaladas
update.packages()

# Pacman Instalación

if (!require("pacman"))	install.packages("pacman")	#	instala	pacman	si	se	requiere
##	Loading	required	package:	pacman
pacman::p_load(tidyverse,	#	conjunto	de	paquetes	tidy
               broom,	#	paquete	para	adecuar	resultados	estadísticos
               car,	#	para	la	regresión	lineal
               DescTools,	#caja	de	herramientas	estadísticas
               esquisse,	#	para	hacer	ggplot	con	drag	and	drop
               extdplyr,	#	extensión	de	dplyr
               gglorenz,	#	gráfico	de	curva	de	lorenz
               haven,	#	importa	archivos	desde	formatos	.dta	y	.sav
               ineq,	#	Para	medidas	de	inequidad	y	desigualdad
               janitor,#	para	tabulado	y	limpieza	de	nombres
               lm.beta,	#	para	coeficientes	beta
               Rcolorbrewer,	#paletas	de	color
               wesanderson,	#paletas	de	color	películas	Wes	Anderson
               robutsbase,	#	Para	estimaciones	de	modelos	robustos
               sjlabelled,	#manejo	de	etiquetas	y	edición
               sjPlot,	#graficos	de	estimaciones	de	modelos	
               stargazer,	#Tablas	de	estimaciones de	modelos
               srvyr,	#	diseño	muestral
               TraMiner	#	Para	el	análisis	de	secuencias
)

# Instalación con ayuda del repositorio de GitHub donde este alojado todo 
#	instala	remotes	si	se	requiere

if (!require("remotes"))	install.packages("remotes")


##	Loading	required	package:	remotes

remotes::install_github("erblast/easyalluvial")

