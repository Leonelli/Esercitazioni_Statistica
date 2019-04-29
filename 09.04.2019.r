library(MASS)

##    1    2    3    4    5    6 
## 0.14 0.29 0.12 0.07 0.11 0.27

#1. Qual è la probabilità di successo p dell'evento elementare?
p <- 0.14+0.11;
R1<- p
R1

#Qual è la probabilità che il primo successo si ottenga esattamente al lancio numero 3 del dado?
#Geometrica
x<-3;
R2<- p * (1-p)^(x-1)
fractions(0.25*(1-0.25)^2)
fractions(R2)

#Qual è la probabilità che siano necessari più di 3 lanci per ottenere il primo successo?
#verifica not sure
k<-3;

R3<-(1-(1-(1-p)^k)) #dovrebbe essere questa
fractions(1-(1-(1-0.25)^3))
fractions(R3)
R3

#Qual è la probabilità P(X≤3.9)?

k <- 3.9
k <- 3
q <- 1 - p
q
R4 <- fractions(1 - q^k);
R4
fractions(1-(1-p)^k)
fractions(1-(1-0.25)^3)

