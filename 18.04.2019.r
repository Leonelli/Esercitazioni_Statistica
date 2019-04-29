    library(MASS)

    #Si consideri una variabile casuale X con funzione di densità
    #f(x)=k(7.21−2x)0<x<3.1
    #= 0 altrimenti.

    inf<-0
    max<-3.1
    k <- 1;

    f <- function(x){
            if(0<x && x<3.1){
                return (k*(7.21-2*x));
            }
            else{
                return(0);
            }
    }

    fx <- function(x){
        return (x*(k*(7.21-2*x)));
    }

    fxx <- function(x){
        return (x*x*(k*(7.21-2*x)));
    }

    #1. Determinare la costante k affinchè f(x) sia funzione di densità.
    value <- integrate(f, inf, max, stop.on.error = FALSE)$value;
    k <- 1/value;
    k;
    fractions(k);

    #2. Calcolare il valore atteso di X.
    speranza<-integrate(fx, inf, max, stop.on.error = FALSE)$value;
    speranza;
    fractions(speranza);
    #3. Calcolare il valore atteso di 13.4+−5.7X
    
    var<- (13.4 - (5.7*speranza));
    var;
    fractions(var);


    #4. Dato il momento non centrato di ordine 2, calcolare la varianza di X:E(X2)=1.9952636
    momento_nonCentrato_2 <- integrate(fxx, inf, max, stop.on.error = FALSE)$value;
    momento_nonCentrato_2;
    var <- momento_nonCentrato_2 - (speranza)^2;
    var;
    fractions(var);
    
    momento_nonCentrato_2<-1.9952636;
    var <- momento_nonCentrato_2 - (speranza)^2;
    var;
    fractions(var);