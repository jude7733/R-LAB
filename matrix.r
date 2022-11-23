mat<-matrix(c(1:16),nrow=4,ncol=4)
a<-mat[2,3]
print("3rd col and 2nd row is")
print(a)
b<-mat[3,]
print("3rd row is")
print(b)
c<-mat[,4]
print("4th col is")
print(c)
print("eigen value is")
print(c(eigen(mat)$value))
print("eigen vector is")
print(c(eigen(mat)$vector))
