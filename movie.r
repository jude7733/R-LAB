movie<-read.csv("/home/jude/Documents/R/Data Files/Movie_classification.csv", header = TRUE)
summary(movie)

#replaces all cells of Time_taken with NA values with mean of Time_taken shredding NA values
movie$Time_taken[is.na(movie$Time_taken)] <- mean(movie$Time_taken,na.rm = TRUE)

# split data
library(caTools)
set.seed(0)
split = sample.split(movie,SplitRatio = 0.8)
want 
#predicting
ypred <- predict(svmfit, tests)
#confusion matrix
table(predict = ypred, truth = tests$Start_Tech_Oscar)
# here we can see model predicted that 51 won't get oscar but 21 cases actually got oscar
# model predicted 56 will get oscar but 20 cases actually didn't get oscar
print(noquote(c("error ration =",41/107,"%")))
print(noquote(c("performance ratio =",66/107,"%")))

#show all support vectors
#svmfit$index

# Finding best value of C / Tuning the hyper-parameter to improve accuracy
set.seed(0)
tune.out <- tune(svm,Start_Tech_Oscar~.,data = trains, kernal = "linear", ranges= list(cost=c(0.001,0.01,0.1,1,10,100)))
bestmod <- tune.out$best.model
summary(bestmod)

ypred <- predict(bestmod, tests)
table(predict = ypred, truth = tests$Start_Tech_Oscar)
print(noquote(c("performance ratio =",(25+39)/107,"%")))
