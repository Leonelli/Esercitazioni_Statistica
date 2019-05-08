library(MASS)

#Sia data la seguente variabile aleatoria bivariata discreta

#X/Y   -0.32	1.18	1.21
#0.56	7 k	    1 k	    8 k     16 k
#1.3	6 k	    3 k	    4 k     13 k
#3.82	2 k	    5 k	    9 k     16 k
#       15k     9 k     21k
#dove sulle righe abbiamo la variabile X e sulle colonne la variabile Y.

#1. Calcolare la costante k che deve essere utilizzata per rendere la tabella una funzione di probabilità congiunta.
X1 <- 7 + 1 + 8;
X2 <- 6 + 3 + 4;
X3 <- 2 + 5 + 9;
X<-X1+X2+X3;
X;

Y1 <- 7 + 6 + 2;
Y2 <- 1 + 3 + 5;
Y3 <- 8 + 4 + 9;
Y <- Y1 + Y2 + Y3;
Y;

k <- 1/45;
1/X == 1/Y;
1/X == k;

#2. Calcolare la distribuzione di probabilità marginale di X. Inserire il solo valore di probabilità per X=3.82.

X3*k;

#3. Calcolare la distribuzione di probabilità marginale di Y. Inserire il solo valore di probabilità per Y=1.21.

Y3*k;

#4. Calcolare il valore atteso di X.
0.56*X1*k + 1.3*X2*k + 3.82*X3*k;

#5. Calcolare la varianza di Y.
