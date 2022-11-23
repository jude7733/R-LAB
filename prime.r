flag <- 1
lim <- as.integer(readline("enter the limit :"))
print(1)
print(2)
print(3)
for (i in 4:lim)
{
for (j in 2:(i / 2))
{
if (i %% j == 0)
{
flag <- 0
}
if (flag == 0)
{
break
}
}
if (flag == 1){
print(i)
}
flag <- 1
}
