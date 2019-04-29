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
        if(x==3){
            tmp<-0.5;
        }
        if(3<x && x<=5){
            tmp<-(0.5+ (1/4) * (x-3) );
        }
        if(x>5){
            tmp<-1;
        }
        return (tmp);
    }

    P <- function(x){
	if(x == 1) { tmp<- (0.15); }
	if(x ==  2) { tmp<- (0.175); }
	if(x ==  3) { tmp<- (0.175); }
	if(x ==  4) { tmp<- (0.25); }
	if(x >=  5) { tmp<- (0.25); }
    return(tmp);
}


F(5)
F(4)

F(4)-F(3);
F(5)-F(4);


#Qual è la probabilità di dell'intervallo (−∞,3)?
R1<-F(3)-F(-Inf)-P(3) ;
R1
#Qual è la probabilità di dell'intervallo [4,∞)?
#2
R2 <- F(Inf)-F(4)+P(4)-P(Inf);
R2

#Qual è la probabilità di dell'intervallo [3,4)?
R3 <-F(4)-F(3)+P(3)-P(4);
R3

#4 Qual è la probabilità di dell'intervallo [3,7)?
R4<-F(7)-F(3)+P(3)-P(7);
R4;