library(MASS)

#Ricordaimo che un esperimento che descrive una v.c. X∼BiNe(r,p) ha le seguenti proprietà:
#l'esperimento consiste in x prove ripetute ogni prova ha solo due esiti possibili 
#(che in genere indichiamo con successo e fallimento)la probabilità di successo p è la stessa per ogni prova le prove sono indipendenti
#l'esperimento continua finché non si osservano r successi, con r fissato.

#Ora, si consideri il seguente “esperimento statistico”.
#Jane Doe si appresta a fare un esame di italiano per potersi iscrivere all'Università di Trento. 
#L'esame consiste in una successione di domande, tutte della stessa difficoltà. Appena Jane totalizza 30 risposte esatte, 
#l'esame è superato. (Ovviamente il voto dipenderà dal tempo impiegato, ma questo non c'interessa.) 
#Jane ha fatto molte simulazioni d'esame e sa che il suo tasso di risposte esatte è del 43.8%.


#Si può descrivere questo esperimento con una variabile casuale distribuita come una Binomiale Negativa?
#Rispondere TRUE o FALSE.
TRUE

#Quali sono i parametri (r,p) della distribuzione?
#La risposta deve avere la forma c(, ) (nell'ordine ordine richiesto). Se si è risposto FALSE alla domanda precedente inserire c(NA, NA).
r<-30
p<-1-43.8/100
r
p
c(30.000,0.438)

#D'ora in poi si consideri X∼BiNe(r,p) con r=30 e p=0.639. 
#Qual è la probabilità che Jane superi l'esame dopo 30 domande? Usare la distribuzione di X.
r<-30
p<-0.639    
x<-30

choose(x-1,r-1)*p^r*(1-p)^(x-r);
fractions(choose(x-1,r-1)*p^r*(1-p)^(x-r))
0.639^30

pnbinom(30,r,p)
fractions(pnbinom(30,r,p))

#Qual è la probabilità che Jane superi l'esame dopo 39 domande? Usare la distribuzione di X.

x<-39
choose(x-1,r-1)*p^r*(1-p)^(x-r);
fractions(choose(x-1,r-1)*p^r*(1-p)^(x-r))

pnbinom(39,r,p)
fractions(pnbinom(39,r,p))

#Calcolare P(X≤34.47)?

x<-34.47

choose(x-1,r-1)*p^r*(1-p)^(x-r);

pnbinom(34.47,r,p)
fractions(pnbinom(34.47,r,p))


sum<-0
x<-30
x
sum<-sum + choose(x-1,r-1)*p^r*(1-p)^(x-r);
x<-x+1
x
sum<-sum + choose(x-1,r-1)*p^r*(1-p)^(x-r);
x<-x+1
x
sum<-sum + choose(x-1,r-1)*p^r*(1-p)^(x-r);
x<-x+1
x
sum<-sum + choose(x-1,r-1)*p^r*(1-p)^(x-r);
x<-x+1
x
sum<-sum + choose(x-1,r-1)*p^r*(1-p)^(x-r);
x<-x+1
sum
fractions(sum)