df <- iris 
set.seed(1234)

ind <- sample(2, nrow(df), replace = TRUE, prob = c(0.7, 0.3))
random.train <- df[ind==1,]
random.test <- df[ind==2,]
