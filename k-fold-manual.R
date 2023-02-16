crx <- read.csv("../Downloads/crx.csv", header=FALSE, na.strings="?")

dfTemp <- crx
# dfTemp <- iris # Prueba


nFolds <- 5

# Nos otorga el numero de elemntos que se ocupan en las prubas
sizeTest <- nrow(dfTemp)/nFolds

sizeTrain <- nrow(dfTemp) - sizeTest # Sacmos el nunmero de elemntos para entrenar
indicesDFTrain <- matrix(nrow =sizeTrain, ncol = nFolds) # Crea una matriz  para guardar los indices del prueba
indicesDfTest <- matrix(nrow = sizeTest, ncol = nFolds)

indDF <- seq(1, nrow(dfTemp))

for (i in 1:nFolds) {
    inicioTest <- ((nFolds - i) * sizeTest) + 1
    indicesDfTest[,i]<-seq(inicioTest, (inicioTest-1+sizeTest))
    
   indicesDFT <- indDF[-indicesDfTest[,i]]
   indicesDFTrain[,i] <-indicesDFT
}


num <- c(1,3,5,7,9)
print(num[-c(2,3)])

