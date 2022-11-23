fact<-function(x)
{ for(i in 1:(x/2))
{ if((x%%i)==0)
{ print(i)
}
}
}
fact(10)
