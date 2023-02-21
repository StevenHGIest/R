## Distancia euclideana y manhattan

library(caret)

library(stats)

setwd("C:\\Users\\ISND89\\Documents\\r docs\\KNN-Glass") #Directorio actual de trabajo (directorio en donde est?n el script y los datos).

df.train<-read.table("glass-train.csv",sep =",", stringsAsFactors=FALSE, header = TRUE)

df.test<-read.table("glass-test.csv",sep =",", stringsAsFactors=FALSE, header = TRUE)

# df.test<-rbind(df.test, df.train[201:208,])

# df.train<-df.train[1:200,]

# Quitamos uno al train
df.train<-rbind(df.train, df.test[1,])

# Le agrega el primer 
df.test<-df.test[-1,]

#################### x vectores ##################

calcula.dist <- function(x, tipo) {
    #euclidean
    if (tipo == 1) {
        
        res<-sqrt(sum((x[1,] - x[2,])^2))
        
    }
    #manhattan
    if (tipo == 2) {
        res<-sum(abs(x[1,] - x[2,]))
    }
    res
}

###################################################

# Son 5 por el numero de filas, del conjunto test.Total 1040 elementos.

dist.euclidean<-matrix(ncol=5, nrow= nrow(df.train))

for (j in 1:nrow(df.test))
    
{
    
    for (i in 1:nrow(df.train))
        
    {
        
        m1<-rbind(df.train[i,1:9], df.test[j,1:9])
        
        dist.euclidean[i,j]<-calcula.dist(m1, 2)
        
    }
    
}

k<-5

knn.results<-matrix(nrow = nrow(df.test), ncol = k)

knn.distances<-matrix(nrow = nrow(df.test), ncol = k)

for(i in 1:nrow(df.test)){
    
    knn.results[i,]<-order(dist.euclidean[,i])[1:k]
    
    knn.distances[i,]<-dist.euclidean[knn.results[i,],i]
    
}

#Obtener la clases de los k vecinos

knn.clases<-matrix(nrow = nrow(df.test), ncol = k)

clase.asignada<-NULL

for(i in 1:nrow(df.test)) {
    
    knn.clases[i,]<-df.train[knn.results[i,],'Type']
    
    clase.asignada<-rbind(clase.asignada, max(knn.clases[i,]))
    
}

cbind(clase.asignada,(df.test[,'Type']))

table(clase.asignada, (df.test[,'Type']))

var1<-factor(clase.asignada, levels= c('build wind float', 'build wind non-float', 'tableware', 'vehic wind float'))

var2<-factor(df.test[,'Type'], levels= c('build wind float', 'build wind non-float', 'tableware', 'vehic wind float'))

confusionMatrix(var1,var2)