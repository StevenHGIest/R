

x<- "Steven"

# Un vector es la estructura más basica
# Pra acceder a los elementosn sde usa el [index], ele inde empoieza en 1.
# Los vectores soom pueden contener un tipo de dato, si tiene diferntes tipos de datos te los cambiara a otro
# Orden prioritario: character, number, Logical
vct<- list(age = c(12,13,14), weight = c(23,98,107))

varx<- c(1,2,3,4,5,6,7)

# Lenght no simpre da todso los elementos por lo que hay usar otra froma 
length(varx)

vct[1]


# En las listas podemos tener mesclados los tipos
lst <- list(12, 1, "True")

# Para acceder a los con los dobles corchetes [[index]]
lst[[1]]

# Las matrices solo puede tener elementos del miusmo tipo
data <- c(1,2,3,4,5,6)
mat <- matrix(data, nrow = 2, ncol = 3, byrow = TRUE)

mat

# Tambien lo podemos hacer con otas funciones
t1 <- c(1,2,3)
t2 <- c(4,5,6)

mr <- rbind(t1, t2)
mc <- cbind(t1, t2)

mr 
mc


# factores
FAC <- factor(c("y", "n", "m"), levels = c("y", "n"))
FAC
FAC

# Valores faltantes 
t <- as.factor(vct)

csvFile <- "C:\\Users\\ISND89\\Documents\\divorce.csv"
divorce  <- read.csv(file = csvFile, sep = ";")

# Tambien podemos impprtar los datso de sede File -> Import dataset y
# lo podemos exportar desde csv o excel

class(divorce)

is.data.frame(divorce)


divorce[1:5, 1:5]

# filas y columnas

summary(divorce[, 1:5])

# summary te da un resume de los datos
divorce[,1]<- as.factor(divorce[,1])
divorce[,1] <- 5


# Podemos crear secuncias con
seq <- 1:12
seq

seqf <- seq(from=2, by=3, length = 12)
seqf


rpei <- rep(1:4,4)
rpei

class(seqf)


y <- seq(from=2, to=10, lenght = 6)

y <- list("Hello", "New", "World")
pos <- c(1,2)

# Si ves los elementos de un array con un vector te enseña todos los valores correspondientes

unlist(y[pos])

y <- list(age=c(18,20,22), height=c(1.60,1.72,1.79))

y$age

y<- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
y


eje2 <- list(divorce[,1], divorce[,2])
eje2


