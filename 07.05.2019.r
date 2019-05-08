library(MASS)

#Sappiamo che certi eventi accadono seguendo una distribuzione di Poisson con una media di 
lambda <- 4;


#1. Calcolare la probabilità che più di 6 eventi si verifichino in una settimana.
prova <- 0;
for(i in 0:6){
    prova = prova + lambda^i*exp(-lambda)/factorial(i);
}
#prova;
1-prova

#ppois(6,lambda);
ppois(6, lambda, lower=FALSE)   # upper tail 
fractions(ppois(6, lambda, lower=FALSE))   # upper tail 

#2. Calcolare la probabilità che al più 11 eventi si verifichino in una settimana.
prova <- 0;
for(i in 0:11){
    prova = prova + lambda^i*exp(-lambda)/factorial(i);
}
prova;
#1-prova

ppois(11,lambda);
#ppois(11, lambda, lower=FALSE)   # upper tail 
fractions(ppois(11,lambda));

#3. Calcolare la probabilità che trascorrano almeno 5 settimane tra due eventi successivi.
#Hint: l'unità di misura di tempo è una settimana; che variabile casuale descrive il tempo trascorso tra eventi successivi? cfr. Wikipedia.
X<-5;
prova <- 1 - (1-(exp(-lambda*X)));
prova;
exp(-lambda*X);
fractions(exp(-lambda*X));

exp(-20)

exp(-20)== exp(-lambda*X)

