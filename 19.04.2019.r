library(MASS)

#L'altezza media di una donna in Italia è distribuita normalmente con media $\mu=162.5$cm (fonti) e scarto quadratico medio, anche detta deviazione standard, 
#σ=4.01 (valore inventato). Indichiamo con X∼N(μ,σ2) la corrispondente variabile casuale.
#Servendosi dell'operazione di standardizzazione (pag. 127 note B) rispondere ai seguenti quesiti.


#Si vuole determinare la probabilità che una donna abbia un'altezza inferiore a 170.2794. Qual è il valore standardizzato corrispondente a 170.2794?

X=170.2794;
mu = 162.5;
ro=4.01;

z<- (X-mu)/ro
z
#2. Calcolare P(X≤170.2794) attraverso standardizzazione.

 pnorm(z);
 fractions(pnorm(z));

#Calcolare P(X≥170.52) attraverso standardizzazione e usando le tavole.


X=170.52;
mu = 162.5;
ro=4.01;

z<- (X-mu)/ro
z
pnorm(z);
1-pnorm(z);
fractions(1-pnorm(z));