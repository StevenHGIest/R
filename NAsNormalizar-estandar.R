crx <- read.csv("../Downloads/crx.csv", header=FALSE, na.strings="?")


colNumericas<-c(2, 3, 8, 11, 14, 15)
for (i in colNumericas)
{
  posV<-which(is.na(crx[,i]))
  mediaV<-mean(!is.na(crx[,i]))
  crx[posV,i]<-mediaV
}
summary(crx)

#función para normalizar
min_max_norm <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}

crxNormal<-crx
#apply Min-Max normalization 
crxNormal[,colNumericas] <- as.data.frame(lapply(crxNormal[,colNumericas], min_max_norm))

# Vaciar los datos a un archivo
write.table(crxNormal, file = "./normalizarNA.csv", sep = "\t", eol= "\n", dec = ".")

standarizacion<-function(x) {
  (x - mean(x))/sd(x)
}

crxEstandar<-crx
#estandardiza todas las columnas numéricas
crxEstandar[,colNumericas] <- as.data.frame(lapply(crxEstandar[,colNumericas], standarizacion))

#estandardiza solo una columna
#crx[,2] <- (crx[,2] - mean(crx[,2])) / sd(crx[,2])

# Vaciar los datos a un archivo
write.table(crxEstandar, file = "/Users/mirna/Documents/IEST/1.MachineLearningMP/Tema1 Introduccio??n/R/estandarNA.txt", sep = "\t", eol= "\n", dec = ".")

summary(crx)
summary(crxNormal)
summary(crxEstandar)

