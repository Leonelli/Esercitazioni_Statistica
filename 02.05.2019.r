library(MASS)

#E' noto che il tempo trascorso tra il passaggio di due veicoli successivi sotto una videocamera del traffico, ha una distribuzione esponenziale di media 8 minuti.
media <- 8;
lamnda <- 1/media
F <- functions(x){
    return(x*lamnda*(-lamnda*x))
}
#1. Determinare la probabilità che il tempo trascorso tra il passaggio di due veicoli successivi sia minore di 8.9.
#Hints:
#il tempo trascorso tra il passaggio di due veicoli successivi è la nostra variabile casuale T;
#si veda pag. 128 note B, per la media di variabile esponenziale.

max<-8.9
min<-0;
integrate(F,min,max)$value;

x<-8.9
1-exp(-lamnda*x)


#2. Determinare l'intervallo di tempo t tale per cui siamo certi al 87%, che il tempo trascorso tra il passaggio di due veicoli successivi sia maggiore di t.

val <- 87/100
t <- - log(val)/lamnda
t
exp(-lamnda*t)

#3. Sapendo che sono già trascorsi 5.2 minuti dal passaggio di un veicolo, qual è la probabilità che si debba attendere altri 4 minuti per il passaggio del veicolo successivo?
x<-4;
1-exp(-lamnda*x);

#4. Trasformazione di v.c.
#Si consideri ora la variabile casuale U=√T. Scrivere la funzione di densità di U.


f<-function(u){ ifelse(u>0, return((1/8) * 2 * u * exp(-(u^2)/8)), return(0));}
plot(f)

#function(u){ ifelse(u>0, return((1/8) * 2 * u * exp(-(u^2)/8)), return(0));}