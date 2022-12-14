library("e1071")
plot(iris)

plot(iris$Sepal.Length, iris$Sepal.Width, col=iris$Species)
plot(iris$Petal.Length, iris$Petal.Width, col=iris$Species)

s<-sample(150, 100)
col<-c("Petal.Length", "Petal.Width", "Species")

iris_train<-iris[s,col]
iris_test<-iris[-s,col]

svmfit <- svm(Species ~., data = iris_train, kernel = "radial", cost = .1, scale = FALSE)
print(svmfit)
plot(svmfit, iris_train[,col])

tuned <- tune(svm, Species ~., data = iris_train, kernel = "radial", ranges = list(cost=c(0.001,0.01,.1,1,10,100)))
summary(tuned)

p <- predict(svmfit, iris_test[,col], type="class")
plot(p)

table(p, iris_test[,3])
mean(p== iris_test[,3])
