data(mtcars)
head(mtcars)
tail(mtcars) 
summary(mtcars)
dim(mtcars)
names(mtcars)
hist(mtcars $mpg,col='blue',main="miles per gallon",xlab="miles per gallon",ylab="number of cars")
boxplot(mtcars
$mpg,col='green',main="miles per gallon",xlab="frequency",ylab="miles")
plot(x=mtcars$wt,y=mtcars$hp,xlab="weight",ylab="hp",main="weight vs hp")
pairs(~mpg+cyl+disp+gear+carb,data=mtcars,main="scatterplot matrix",col="red")
data(iris)
pairs(~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,data=iris,main="scatterplot matrix",col="red")
data<-iris[,1:4]
cor(data)

apply(Titanic,c(4),sum)




