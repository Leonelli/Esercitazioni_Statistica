library(MASS)
lambda <- 2.178

lambda <- fractions(2.178)
f <- function(x){
 if(x<0){
    res <- 0
 }
 else{
    res <- 1-exp(-lambda*x)
 }
 return(res)
}


a1<-0.086
b1<-0.202
res1 <- f(b1)-f(a1)
res1


a2<- -0.226
b2<- 0.226
res2 <- f(b2)-f(a2)
res2

a3<-0.24
b3<-0.29

a4<-0.315
b4<-0.889

res3 <- (f(b3)-f(a3)) + (f(b4)-f(a4))
res3

a5<-0.086
b5<-0.202
res4<- res3 + (f(b5)-f(a5))
res4