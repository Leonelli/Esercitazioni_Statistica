library(MASS)

pr1<-(0.09)
pr2<-(0.16)
pr3<-(0.14)
pr4<-(0.18)
pr5<-(0.08)
pr6<-(0.03)
pr7<-(0.19)
pr8<-(0.13)

#Qual è la probabilità dell'intervallo (4,7)?
R1 <- pr5+pr6;
R1;

#Qual è la probabilità dell'intervallo (6,+∞)?
R2 <- pr7+pr8;
R2;

#3. Qual è il valore della funzione di distribuzione (di ripartizione) nel punto x=6?
R3 <- pr1+pr2+pr3+pr4+pr5+pr6;
R3

#Il valore della funzione di distribuzione (di ripartizione) in x1=5 è maggiore di quello in x2=6?
x1=pr1+pr2+pr3+pr4+pr5;
x2=pr1+pr2+pr3+pr4+pr5+pr6;

R4<- x1>x2;
R4;