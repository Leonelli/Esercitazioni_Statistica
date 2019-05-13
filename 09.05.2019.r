library(MASS)

#Sia data la seguente variabile aleatoria bivariata discreta

#	        -1.26	-0.8	-0.66	1.75
#   -3.03	3 k	    4 k	    8 k	    10 k    25 k
#   1.56	9 k	    1 k	    7 k	     6 k    23 k
#   1.65	2 k	    5 k	    12 k	11 k    30 k
#          14 k    10 k     27 k    27 k    78 k


#1. Calcolare la costante k che deve essere utilizzata per rendere la tabella una funzione di probabilità congiunta.
k<-1/78
k

fractions(k);

#2. Calcolare la distribuzione di probabilità marginale di X. Determinare P(X≤1.56).
#prob_margin_X <- (-3.03)*25*k + 1.56*23*k;
prob_margin_X <- 25*k + 23*k;
prob_margin_X;
fractions(25*k + 23*k)

#3. Calcolare la distribuzione di probabilità marginale di Y. Determinare P(Y>−1.26).

#prob_margin_Y <-  (-0.8)*10*k + (-0.66)*27*k + (1.75)*27*k;
prob_margin_Y <-  10*k + 27*k + 27*k;

prob_margin_Y

prova <- 1 - (14*k);
prova;

fractions(1 - (14*k))
#4. Calcolare il valore atteso condizionato E[X|Y=−0.66].
#moltiplico i volori delle X per i valori della colonna delle Y= -0.66 (6k,8k...)

 
8/27 * -3.03 + 7/27 * 1.56 + 12/27 * 1.65;

fractions(8/27 * (-3.03) + 7/27 * 1.56 + 12/27 * 1.65)


#5. Determinare la varianza condizionata Var[Y|X=1.56].

E_Y_X <- (-1.26)*(9/23)+ (-0.8)*(1/23)+ (-0.66)*(7/23) + (1.75)*(6/23);
E_Y_X2 <- (-1.26)^2*(9/23)+ (-0.8)^2*(1/23)+ (-0.66)^2*(7/23) + (1.75)^2*(6/23);
E_Y_X;
E_Y_X2

E_Y_X2-E_Y_X^2;
fractions(E_Y_X2-E_Y_X^2)