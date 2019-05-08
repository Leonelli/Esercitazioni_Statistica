library(MASS)

#Sappiamo che certi eventi accadono seguendo una distribuzione di Poisson con una media di 
lambda <- 7;


#1. Calcolare la probabilità che più di 6 eventi si verifichino in una settimana.
prova <- 0;
for(i in 0:2){
    prova = prova + lambda^i*exp(-lambda)/factorial(i);
}
prova;
1-prova

#ppois(6,lambda);
ppois(2, lambda, lower=FALSE)   # upper tail 

#2. Calcolare la probabilità che al più 11 eventi si verifichino in una settimana.
prova <- 0;
for(i in 0:7){
    prova = prova + lambda^i*exp(-lambda)/factorial(i);
}
prova;
#1-prova

ppois(7,lambda);
#ppois(11, lambda, lower=FALSE)   # upper tail 


#3. Calcolare la probabilità che trascorrano almeno 5 settimane tra due eventi successivi.
#Hint: l'unità di misura di tempo è una settimana; che variabile casuale descrive il tempo trascorso tra eventi successivi? cfr. Wikipedia.
X<-3;
prova <- 1 - (1-(exp(-lambda*X)));
prova;
exp(-lambda*X)



