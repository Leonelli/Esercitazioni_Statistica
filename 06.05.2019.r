library(MASS)
#Sia X∼N(2.96,1.47).
mu <-2.96;
sigma2 <-1.47;
sigma <- sqrt(sigma2);

#1. Calcolare Pr(3.93<X≤4.96)
X1<-3.93
A<- pnorm(X1,mu,sigma);

X2<-4.96
B<- pnorm(X2,mu,sigma);

R1<-B-A;
R1
fractions(R1);

#2. Calcolare Pr(X<2.6)
X<-2.6;
pnorm(X,mu,sigma)
fractions(pnorm(X,mu,sigma))

#3. Calcolare Pr(|X|>1.11)
#Pr(X<-1.11) + (X >1.11)

X1<- -1.11
C<-pnorm(X1,mu,sigma)

X2<- 1.11
D<-1-pnorm(X2,mu,sigma)

C+D;
fractions(C+D);