library(MASS)

#Un gioco al Luna Park consiste in un distributore contenente palline numerate da 1 a 5. Una volta inserita una moneta la probabilità di ogni pallina è data dalla seguente tabella:

#        1.00	2.00	3.00	4.00	5.00
#   p	 0.17	0.20	0.10	0.26	0.27
#Indichiamo con X la variabile aleatoria discreta che descrive il risultato “otteniamo la pallina con numero…”, X(ω)∈{1,2,3,4,5}.

x1<-1.00
x2<-2.00
x3<-3.00
x4<-4.00
x5<-5.00

p1<-0.17
p2<-0.20
p3<-0.10
p4<-0.26
p5<-0.27

probabilità <- c(0.17, 0.20, 0.10, 0.26, 0.27);


#1. Calcolare il valore atteso di X
valore_atteso <- 1.00*0.17 + 2.00*0.20 + 3.00*0.10 + 4.00*0.26 + 5.00*0.27;
valore_atteso;

valore_atteso <- x1*p1+x2*p2+x3*p3+x4*p4+x5*p5;
valore_atteso;

#2. Calcolare il terzo momento centrato di X
#μ ̄r =E((x−μ1)^r)

momento_terzo_centrato<-((x1-valore_atteso)^3*p1) + ((x2-valore_atteso)^3*p2) + ((x3-valore_atteso)^3*p3) + ((x4-valore_atteso)^3*p4) + ((x5-valore_atteso)^3*p5);
momento_terzo_centrato;

#3. Calcolare il terzo momento non centrato di Y=2.5X
#mu3 = E((x-valore_atteso))
#μr = E(X^r)
#Y<-2.5*X;
k<-2.5;
mu <- ((k*x1^3)*p1) + ((k*x2^3)*p2) + ((k*x3^3)*p3) + ((k*x4^3)*p4) + ((k*x5^3)*p5);
mu

prova <- 0;
for(i in 1:5){
    prova = prova + k^3*(probabilità[i]*i^3);
}
prova;


#4. Probabilità condizionata 
#Supponiamo ora che siamo due amici, 
#entrambi vorremmo tentare la fortuna con il distributore ma, 
#siccome abbiamo una sola moneta, tiriamo a sorte a chi tocca. 
#La moneta è equilibrata. Io punto su testa. Qual è la probabilità che io ottenga la pallina con il numero 5?

p5*0.5;