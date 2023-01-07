print("enter the number of elements for the series")
x<-readline()
fib<-function(x){
    a=0
    b=1
    count=2
if(x==1){
   print(0)
}else {
   print("the fibonacci series are")
   c=0
   print(a)
   print(b)
while(count<x)
{
    c=a+b
    print(c)
    a=b
    b=c
    count=count+1
}}
}
fib(x)
