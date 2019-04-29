library(MASS)

#Il 6.6% dei libri stampati da una casa editrice presentano dei difetti. Dato un lotto di 170 libri, determinare la probabilità che:

#1. almeno un libro abbia difetti
#pr(x>=1)
#1-pr(0)

p<-0.066
N<-170
x=0

1- ( choose(N,x)*p^x*(1-p)^(N-x) )

#2. ci siamo (esattamente) 155 libri perfetti (senza alcun difetto)
#ovvero che ci siamo 170 -155 libri diffettosi 
n<-170
p<-1-0.066 
k<-155
choose(n,k)*p^k*(1-p)^(n-k)

n<-170
p<-0.066 
k<-170-155
choose(n,k)*p^k*(1-p)^(n-k)

#3. non ci siano più di 11 libri difettosi
k<-12
p<-0.066

1 - choose(n,k)*p^k*(1-p)^(n-k)



n<-170
p=0.066
y <- 11
i <- 0 
Pr_massimo_y <- 0
while(i<=y){
    Pr_massimo_y <- Pr_massimo_y + choose(n,i)*(p^i)*((1-p)^(n-i))
    i <- i+1
}
Pr_massimo_y


k<-0
j<-11
R4<-0
while(k<=j){
    R4<- R4 + choose(n,k)*p^k*(1-p)^(n-k)
    k<-k+1
}
R4



fractions(1 - (choose(170,0) * (0.066)^0 * (1-0.066)^170))
1 - (choose(170,0) * (0.066)^0 * (1-0.066)^170)

fractions(choose(170,155) * (1-0.066)^(155) * (0.066)^(170-155))
choose(170,155) * (1-0.066)^(155) * (0.066)^(170-155)

fractions(sum(dbinom(0:11, 170, 0.066)))
sum(dbinom(0:11, 170, 0.066))

