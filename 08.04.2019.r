library(MASS)

p <- 0.3;
N <- 21;
R1<-p;

R2 = fractions(choose(21,1)*0.3*(0.7)^20);
R2

x<-1;
fractions(choose(N,x)*(p^x)*(1-p)^(N-x))

res <- 0;
x<- 10;
#while(x<=21) {  
#    print(x);
#    res <- res + fractions(choose(N,x)*(p^x)*(1-p)^(N-1));
#    print("frazione")
#    print(fractions(choose(N,x)*(p^x)*(1-p)^(N-1)));
#    print(res); 
#    x<-x+1;
#}
res;

x
res <- res + fractions(choose(N,x)*(p^x)*(1-p)^(N-x));
res
x<-x+1;
x
res <- res + fractions(choose(N,x)*(p^x)*(1-p)^(N-x));
res
x<-x+1;
x
res <- res + fractions(choose(N,x)*(p^x)*(1-p)^(N-x));
res
x<-x+1;
x
res <- res + fractions(choose(N,x)*(p^x)*(1-p)^(N-x));
res
x<-x+1;
x
res <- res + fractions(choose(N,x)*(p^x)*(1-p)^(N-x));
res
x<-x+1;
x
res <- res + fractions(choose(N,x)*(p^x)*(1-p)^(N-x));
x<-x+1;
x
res <- res + fractions(choose(N,x)*(p^x)*(1-p)^(N-x));
res
x<-x+1;
x
res <- res + fractions(choose(N,x)*(p^x)*(1-p)^(N-x));
res
x<-x+1;
x
res <- res + fractions(choose(N,x)*(p^x)*(1-p)^(N-x));
res
x<-x+1;
x
res <- res + fractions(choose(N,x)*(p^x)*(1-p)^(N-x));
res
x<-x+1;
x
res <- res + fractions(choose(N,x)*(p^x)*(1-p)^(N-x));
res
x<-x+1;
x
res <- res + fractions(choose(N,x)*(p^x)*(1-p)^(N-x));
res
x<-x+1;

res;



fractions(sum(dbinom(x=10:21, size=21, prob=0.3)));
fractions(1-pbinom(9, size=21, prob=0.3));