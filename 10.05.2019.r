library(MASS)

#Consideriamo un esperimento aleatorio che consiste nel lancio di due dadi non equilibrati. In particolare la funzione di probabilità di massa pX,Y(x,y) – dove X(ω)∈{1,…,6} rappresenta il primo dado e Y(ω)∈{1,…,6} il secondo dado – è riportata in tabella


#       1	    2	    3	    4	    5	    6
#1	0.04830	0.05040	0.03570	0.05460	0.00420	0.01680
#2	0.03910	0.04080	0.02890	0.04420	0.00340	0.01360
#3	0.04370	0.04560	0.03230	0.04940	0.00380	0.01520
#4	0.00920	0.00960	0.00680	0.01040	0.00080	0.00320
#5	0.04370	0.04560	0.03230	0.04940	0.00380	0.01520
#6	0.04600	0.04800	0.03400	0.05200	0.00400	0.01600

#Come al solito, sulle righe abbiamo la variabile X e sulle colonne la variabile Y.

#1. Determinare la probabilità che sul primo dado esca un numero pari.

#per il primo dado (X)
esce2<-0.03910+0.04080+0.02890+0.04420+0.00340+0.01360;
esce4<-0.00920+0.00960+0.00680+0.01040+0.00080+0.00320;
esce6<-0.04600+0.04800+0.03400+0.05200+0.00400+0.01600;

escePari<-esce2+esce4+esce6;
escePari;

#2. Determinare la probabilità che sul secondo dado non escano 5 o 3.

esce5<-0.00420+0.00340+0.00380+0.00080+0.00380+0.00400;
esce3<-0.03570+0.02890+0.03230+0.00680+0.03230+0.03400;

1-esce5-esce3;

#3. Dopo aver determinato la funzione di probabilità condizionata di pX|Y(x|y=5). Determinare P(X≥5|Y=5).
#X   Y=5
#1   0.21
#2   0.17
#3   0.19
#4   0.04
#5   0.19
#6   0.2

p_5_5 <- 0.19+0.2;
p_5_5;

#4. Calcolare il valore atteso condizionato E[X|Y=3].
#X   Y=3
#1   0.21
#2   0.17
#3   0.19
#4   0.04
#5   0.19
#6   0.2


1*0.21 + 2*0.17 + 3*0.19 + 4*0.04 + 5*0.19 + 6*0.2;

#5. Determinare la varianza condizionata Var[Y|X=5].

pX_5<-0.04370+0.04560+0.03230+0.04940+0.00380+0.01520;


Y1_5<-0.04370/pX_5;
Y1_5
Y2_5<-0.04560/pX_5;
Y2_5
Y3_5<-0.03230/pX_5;
Y3_5
Y4_5<-0.04940/pX_5;
Y4_5
Y5_5<-0.00380/pX_5;
Y5_5
Y6_5<-0.01520/pX_5;
Y6_5

E_Y_X_5<- 1*Y1_5 + 2*Y2_5 + 3*Y3_5 + 4*Y4_5 + 5*Y5_5 + 6*Y6_5;
E_Y_X_5
E_Y_X_5_2<- 1^2*Y1_5 + 2^2*Y2_5 + 3^2*Y3_5 + 4^2*Y4_5 + 5^2*Y5_5 + 6^2*Y6_5;
E_Y_X_5_2
E_Y_X_5_2 - E_Y_X_5^2