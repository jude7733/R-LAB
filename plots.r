prod<- read.table("/home/jude/Documents/Data Files/Product.txt",header= TRUE,sep= "\t")
str(prod)
cust<-read.csv("/home/jude/Documents/Data Files/Customer.csv",header = TRUE)
str(cust)
View(cust)

#counting customer by region
reg<-table(cust$Region)
reg
View(reg)

#order barplot and horizondal and remove black border
barplot(main="freq of\n regions",reg[order(reg)],horiz = FALSE,col=c("red","blue","yellow","green"),border = NA,xlab = "no of customers")

#shows all colors
colors()

hist(cust$Age,breaks =5)     #try to make 5 cols
hist(cust$Age,breaks =c(0,40,60,100),freq=TRUE,col = "blue",main = "Hist of age",xlab="customer age")     #specify according to age grp
