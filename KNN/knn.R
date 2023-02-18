df<-iris
set.seed(1234)

ind<-sample(2, nrow(df), replace=TRUE, prob = c(0.7,0.3))

random.train<-df[ind==1,]
random.test<-df[ind==2,]

instTrain<-random.train[1,1:4]
instTest<-random.test[1,1:4]

distManhattan<-function(x,y) {
    result<-sum(abs(x-y))
}

dist<-distManhattan(instTrain, instTest)
dist
