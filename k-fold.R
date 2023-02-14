df <- data.frame(y=c(6, 8, 12, 14, 14, 15, 17, 22, 24, 23),
                 x1=c(2, 5, 4, 3, 4, 6, 7, 5, 8, 9),
                 x2=c(14, 12, 12, 13, 7, 8, 7, 4, 6, 5))

df

library(caret)

#specify the cross-validation method
ctrl <- trainControl(method = "cv", number = 5)
# trainCintrol usa cross valiation va a hacer 5 folds

# Construye ub modelos de regresion lineal, envia la variable
model <- train(y ~ x1 + x2, data = df, method = "lm", trControl = ctrl)
# y es la clase o la prediccion que quiero haceer, son los atributos o columnas que tiene las caracteriticas que quermosn 

#Methodo es lm, regresion lineal
# parametros que dimos arriba, y construye mun modelo

print(model)


# Siempre se divide los datos entre numero de folds, son la cantidads de prdictores que usamos
# Intenta hacer un aprtediccion de que si hay 2 en x1 y 14 en x2, te tien que predecir que y es 6
