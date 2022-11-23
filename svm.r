library("caret")
data(iris)
iri<-iris
set.seed(123)
summary(iri)
tm<-createDataPartition(y=iris$Species,p=0.8,list=F)
print(tm)
training.Iris<-iri[tm,]
print("training data")
print(training.Iris)
testing.Iris<-iri[-tm,]
print("testing data")
print(testing.Iris)
cat("Dimension of training data : ",dim(training.Iris))
cat("\nDimension of testing data : ",dim(testing.Iris))

boxplot(training.Iris[,-5],main="Training Data")

preObj <- preProcess(training.Iris[,-5],method = c("center","scale"))
preObjData <- predict(preObj,training.Iris[,-5])

boxplot(preObjData,main="Normalized Data")

modelFit<-train(Species~.,data=training.Iris,preProcess=c("center","scale"),method="lda")
predictions<-predict(modelFit, newdata=testing.Iris)
print(confusionMatrix(predictions, testing.Iris$Species))

