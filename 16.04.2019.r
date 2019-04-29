library(MASS)

#Si consideri la funzione f così definita: f(x)=cx5 per 0≤x≤1 e f(x)=0 altrove, dove c>0 è una costante.


#Si determini c>0 in modo che f(x) si la funzione di densità di una variabile casuale X.
c<-6;
f <- function(x){
    tmp<-0;
    if(0<=x && x<=1){
        tmp<-(c*x^5)
    }
    else {
        tmp<-0;
    }
    return (tmp);
}

plot(f);
integrate(f,0,1)

#D'ora in poi, sia X una v.c. con densità f(x), in cui si usa la costante c trovata sopra. Determinare il valor medio (anche detto aspettazione o valore atteso) di X.

integrate(f,-INF,INF)

#valore medio
#integrale f(x)*p
#integrale di x*6x^5 = integrale 6x^6 tra 0 e 1
#6/7
6/7

#Determinare la varianza di X.
0 #

#Determinare la probabilità P(X≤0.67)

#integral_(0)^(0.67) ( 6*x^5)  )
#0.67^6
