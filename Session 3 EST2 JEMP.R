# Estadistica Descriptiva

#Programas a utilizar

install.packages("tidyverse")
library(tidyverse)

install.packages("plyr")
library(plyr)

install.packages("dplyr")
library(dplyr)

#Base de Datos (BD)

mtcars 
help ("mtcars")


#[, 1]	mpg	Miles/(US) gallon
#[, 2]	cyl	Number of cylinders
#[, 3]	disp	Displacement (cu.in.)
#[, 4]	hp	Gross horsepower
#[, 5]	drat	Rear axle ratio
#[, 6]	wt	Weight (1000 lbs)
#[, 7]	qsec	1/4 mile time
#[, 8]	vs	Engine (0 = V-shaped, 1 = straight)
#[, 9]	am	Transmission (0 = automatic, 1 = manual)
#[,10]	gear	Number of forward gears
#[,11]	carb	Number of carburetors

#Visualiza los datos

View(mtcars) # Muestra una tabla con información
head(mtcars) # Presenta los primeros 6 registros de la información
str(mtcars)  # Organiza las variables en filas

# Variables categoricas
# Una variable
table(mtcars$cyl) #Tabulado. Con $ llamo a la columna de interés
table(mtcars)
prop.table(table(mtcars$cyl)) # Tabulado en proporciones

class(mtcars$mpg)
class(mtcars$vs)
class(mtcars$gear)

# Varias variables
table(mtcars$cyl, mtcars$vs) # Tabulado combinado

# Variable Númerica
mean(mtcars$mpg) # Media de la columna mpg

# Variable númerica y categórica
by(mtcars$mpg, mtcars$cyl, mean)
help(by)
summary(mtcars$mpg, mtcars$cyl, mean)

plyr::ddply(mtcars,"cyl", summary, N = length(mpg), mean = mean(mpg),
        sd = sd(mpg))    #Nos arroja un dataframe con lo que indiquemos

plyr::ddply(mtcars,"cyl", summarise, N = length(mpg), mean = mean(mpg),
            sd = sd(mpg))    #???????

summary(mtcars) # Hace un resumen de cada variable

# Medidas de Tendencia Central
mean(mtcars$mpg)
median(mtcars$mpg)

# Cuantiles
quantile(mtcars$mpg, c(0.5, 0.95))

# Dispersión
var(mtcars$mpg)
sd(mtcars$mpg)
IQR(mtcars$mpg)

help(IQR)

x <- c(2, 3, 4, 5, NA)
mean(x, na.rm = TRUE)









