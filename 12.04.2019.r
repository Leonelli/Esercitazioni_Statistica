library(MASS)

#Esercizio sulla distribuzione di Poisson, Definizione nelle note A, pag.43-45.
#In media, ad un MacDrive arrivano 14 macchine in un'ora. 
#Sia X la v.c. che descrive il numero di auto che arrivano tra le 7 e le 8 di mattina. 
#X∼Pois(λ=14).

lambda <- 14

#Qual è la probabilità che non arrivino macchine nell'ora indicata?
 exp(-lambda)
fractions(exp(-lambda))


#Qual è la probabilità che arrivino esattamente 7 macchine nell'ora indicata?
n<-7

lambda^7/ factorial(7)* exp(-lambda)
fractions(lambda^7/ factorial(7)* exp(-lambda))


#Qual è la probabilità che arrivino almeno 7 e non più di 10 macchine?

sum <- lambda^7/ factorial(7)* exp(-lambda)+
lambda^8/ factorial(8)* exp(-lambda)+
lambda^9/ factorial(9)* exp(-lambda)+
lambda^10/ factorial(10)* exp(-lambda);

fractions(lambda^7/ factorial(7)* exp(-lambda)+
lambda^8/ factorial(8)* exp(-lambda)+
lambda^9/ factorial(9)* exp(-lambda)+
lambda^10/ factorial(10)* exp(-lambda))



