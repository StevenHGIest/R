# procesamientpo de datos

# Los

# Para instalar más facilmente descargar librerias tools -> Install 
# Siempre pones en click lo de isnbtaalr dependencias
library(tidyverse)

diamonds %>% count(clarity)

dia <- diamonds

summary(dia)

class(dia$clarity)

summary(dia$clarity)

summary(dia)

class(dia)

nrow <- c(0.21, "Ideal", "D", NA, 80, 96, 188824, 11,59, 32)

ndia <- rbind(dia, nrow)

summary(ndia)

# lO HACEMOS CON LOS DARTOS CORRECTOS
nrowc <- c(0.21, "Ideal", "D", "SI1", 80, 96, 188824, 11,59, 32)

ndiac <- rbind(dia, nrowc)

summary(ndiac)

a <- c(1,2,3,4,5,6)
dia[,a] = as.numeric(dia[,a])

class(dia)

head(dia)
tail(dia)




link <- "C:\\Users\\ISND89\\Downloads\\auto-mpg.csv"
data <- read.csv(link, sep=" ")
class(data)
is.na.data.frame(data$X18.0)
which(data$X == "?")


