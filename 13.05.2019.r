library(MASS)

#Per una variabile aleatoria bivariata discreta si conosce che le modalità della prima componente (X) sono

#-10	-8	10
#mentre le modalità della seconda componente (Y) sono

#-7	-3	8	9

#La funzione di probabilità marginale di X è

#-10	-8	    10
#0.36	0.34	0.30

#mentre le distribuzioni condizionate pY|X(y|x) sono riportate nelle righe della seguente tabella

#       -7	    -3	    8	    9
#-10	0.27	0.23	0.25	0.25
#-8	    0.25	0.22	0.29	0.24
#10	    0.22	0.22	0.24	0.32

#dove sulle righe abbiamo la variabile X e sulle colonne la variabile Y.

#1. Calcolare E(X)
valore_atteso <- (-10)*0.36 + (-8)*0.34 + (10)*0.30;
valore_atteso;
#2. Calcolare la Var(X)
valore_atteso2 <- (-10)^2*0.36 + (-8)^2*0.34 + (10)^2*0.30;
varianza <- valore_atteso2 - valore_atteso^2;
varianza;

#3. Calcolare Var(E(X|Y))


#4. Calcolare E(Var(X|Y))

