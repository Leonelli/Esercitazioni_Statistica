library(MASS)

F <- function(x){
    return ((1/((1+exp(-2.2*x))))^2)
} 

plot(F)


#Qual è la probabilità di (−∞,−0.79]?
R1 <- F(-0.79) - F(-Inf);
fractions(R1)
fractions(F(-0.79));
#0.74,∞
R2 <- F(Inf) - F(0.74);
fractions(R2)
fractions(1-F(0.74))

#Qual è la probabilità di (−∞,−0.79]∩(0.74,∞]∪0?
#0 perchè non c'è nussun elemeno comune e la probibilità del singoletto
#che viene sommata è sempre 0

R3<-F(0)-F(0) #?
R3

#Qual è la probabilità di R∖((−∞,−0.79]∩(0.74,∞]∪(0,0.398])?

R4<-(F(Inf)-F(-Inf)) - (F(0.398) - F(0));
fractions(R4)
fractions(1-(F(0.398) - F(0)));
