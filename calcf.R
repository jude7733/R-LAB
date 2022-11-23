a<-as.integer(readline("enter first number"))
b<-as.integer(readline("enter second number"))
print("1. addition")
print("2. subtraction")
print("3. multiplication")
print("4. division")
ch<-as.integer(readline("enter choice"))
add<-function(a,b){
return(a+b)}
minus<-function(a,b){
return(a-b)}
mul<-function(a,b){
return(a*b)}
div<-function(a,b){
return(a/b)}
if(ch==1){
print(noquote(c("sum :",add(a,b))))
}else if(ch==2){
print(noquote(c("difference :",minus(a,b))))
}else if(ch==3){
print(noquote(c("product :",mul(a,b))))
}else if(ch==4){
print(noquote(c("quotient :",div(a,b))))
}else{print(noquote("invalid choice"))}
