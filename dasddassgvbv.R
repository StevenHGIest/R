set.seed(3147)

x <- rnorm(100) # Te da 100 numero aleatorios

summary(x) # Te da el resumende los datos

boxplot(x) # mTe das el diagrama de caja de los datos

boxplot.stats(x)
boxplot.stats(x)$out # Te da los datos qu4 son los outliers

media <- mean(x)

desvEst <- sd(x)

dwsv_3 = 3 * desvEst - media
desv_2 = 2 * desvEst - media


y <- rnorm(100)

df <- data.frame(x,y)
rm(x,y)

head(df)

attach(df) # te deja usar las variables de un dtaa frame sin que tengas que especificarla
(a <- which(x %in% boxplot.stats(x)$out))

(b <- which(y %in% boxplot.stats(y)$out))

detach(df)

(outlier.list1 <- intersect(a,b))

plot(df)
points(df[outlier.list1,], col="red", pch="+", cex=2.5)

(outlier.list2 <- union(a,b))

plot(df)
points(df[outlier.list2,], col="blue", pch="x", cex=2)

# Diagrama de venn
