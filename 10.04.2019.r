library(MASS)

p <- 0.842
p

#Qual è la probabilità che il chip sbagli la misurazione?
q <- 1-p;
R1<-q
R1

#Per vedere se gli errori nelle misurazioni sono dovuti all'impiego continuo del chip, il ricercatore decide di tenere traccia di quando il chip fallisce.
#Qual è la probabilità che le prime 34 misurazioni siano esatte (i.e. la 35 sia sbagliata)?

x<-35;
R2<-(q*(1 - q)^(x-1))
(0.158*(1-0.158)^34) #giusto ma va in overflow
R2

#Le prime 34 simulazioni si sono susseguite senza sbagli, qual è la probabilità che un errore si presenti per la prima volta dopo ulteriori 17 simulazioni?

#basta calcolare la P(x=17) perchè non ha memoria
x=17
R3<-fractions(q*(1 - q)^(x-1))
R3

m <- 17
Pr_m_esatte_dopo_n <- sum(dgeom(x=m-1,prob=q))
fractions(Pr_m_esatte_dopo_n)
