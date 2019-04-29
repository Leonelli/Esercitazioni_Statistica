    library(MASS)

    F <- function(x){
        if(x<1){
            tmp <- 0;
        }
        if(1<=x && x<2){
            tmp<-0.15;
        }
        if(2<=x && x<3){
            tmp<-0.325;
        }
        if(3<=x && x<=5){
            tmp<-(0.5+ (1/5) * (x-3) );
        }
        if(5<=x && x<=6){
            tmp<-(0.9);
        }
        if(x>6){
            tmp<-1;
        }
        return (tmp);
    }


    P <- function(x){
	    if(x == 1) { tmp<- (0.15); }
        if(x ==  2) { tmp<- (0.175); }
        if(x ==  3) { tmp<- (0.175); }
        if(x ==  4) { tmp<- (0); }
        if(x ==  5) { tmp<- (0); }
        if(x ==  6) { tmp<- (0.1); }
        return(tmp);
    }

#1. Qual è la probabilità di {5}?
R1 <- F(5)-F(4);
R1

#2. Qual è la probabilità di {6}∪{4}?
P6 <- F(6)-F(5);
P6
P4 <- F(4)-F(3);
P4
R2 <- P6 + P4;
R2

#3. Qual è la probabilità di dell'intervallo [1.68,5.33)∪{5}?
PI <- F(5.33)-F(1.68)#+P(1.68)-P(5.33);
R3 <- R1 + PI;
R3;