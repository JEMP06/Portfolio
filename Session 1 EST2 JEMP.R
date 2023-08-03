#Sesión 1 EST2 2023

a <- 5
x <- c(2,4,8) #Los vectores se construyen con c()
num.a <- c(1:10) #Asigna un vector a un objeto
num.a
View(num.a)
num.b <- c(seq(1,15, by=0.5)) #Asigna un vector con la función Seq
num.b
num.x <- c(seq(num.a))
num.x
num.c <- c(seq(1, 20, by = 2)) #Asigna vector con seq
num.c
num.d <- c(1:4)
num.d
names(num.d) <- c("a", "b", "c", "d") #Asignar nombres a los elementos
num.d
media1 <- num(1:5)

AltEdif <- c(100, 150, 121, 109, 103, 117, 114, 108)
summary(AltEdif)
class(AltEdif)

aeropuertos <- c("cdmx" , "pac", "tol", "qet", "pac", "pac")
summary(aeropuertos)

# Factores cambian de caracteres a categorias
aeropuertos.factores <- factor(aeropuertos)
summary(aeropuertos.factores)

#Listas
a <- c(1,2,3)
b <- c("rojo", "azul", "negro")
c <- "Hola"

lista.1 <- list (a,b,c)
lista.1
#Nombre de las categorias
lista.1 <- list(numeros = a , colores = b , Mensaje = c) 
#Se usa igual (=) para asignar adentro de la syntaxis de las funciones
#Se usa (igual (<-) para asignar fuera de la syntaxis de las funciones
lista.1
#Nombrar por categorias
(lista.1 <- list(Números = a, Colores = b, Mensaje = c))


#Matriz

Altura <- c(1:10)
Ancho <- c(50:59)

Datos.M <- c(Altura, Ancho)
Matriz.1 <- matrix(Datos.M)
Matriz.1
help("matrix")
Matriz.2 <- matrix(Datos.M, byrow = TRUE, nrow = 7)
Matriz.2

#help("") 

#Data Frames

Altura.E <- c(1:10)
Nombre.E <- c("a","b","c","d","e","f","g","h","i","j")
Lógicos.E <- c(T,F,F,F,F,F,T,T,F,F)

class(Altura.E)
class(Nombre.E)
class(Lógicos.E)

DataFrame.E <- data.frame(Altura.E,Nombre.E,Lógicos.E)
