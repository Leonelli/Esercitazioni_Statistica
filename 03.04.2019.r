library(MASS)

F<- function(x){
    if(x<1.288) tmp <- 0;
    if(1.288<= x && x<1.668) tmp <- 0.0554;
    if(1.668<= x && x<2.047) tmp <- 0.2615;
    if(2.047<= x && x<2.427) tmp <- 0.5806;
    if(2.427<= x && x<2.807) tmp <- 0.8441;
    if(2.807<= x && x<3.186) tmp <- 0.9665;
    if(3.186<= x && x<3.566) tmp <- 0.9969;
    if(3.566 <= x) tmp <- 1;
    return(tmp);
}



P1 <- 0.0554 - 0;
P2 <- 0.2615 - 0.0554;
P3 <- 0.5806 - 0.2615;
P4 <- 0.8441 - 0.5806;
P5 <- 0.9665 - 0.8441;
P6 <- 0.9969 - 0.9665;
P7 <- 1 - 0.9969;

P1
P2
P3
P4
P5
P6
P7


P <- function(x){
	if(x ==  1.288) { tmp<- (P1); }
	if(x ==  1.668) { tmp<- (P2); }
	if(x ==  2.047) { tmp<- (P3); }
	if(x ==  2.427) { tmp<- (P4); }
	if(x ==  2.807) { tmp<- (P5); }
	if(x ==  3.186) { tmp<- (P6); }
	if(x ==  3.566) { tmp<- (P7); }
    return(tmp);
}

#Qual è la probabilità dell'intervallo (1.668, 4.67]?
R1<- F(4.67)-F(1.668);
R1;

R1_2 <- P(3.566)+P(3.186)+P(2.807)+P(2.427)+P(2.047);
R1_2

#Qual è la probabilità dell'intervallo [1.668, 2.427)
R2<- F(2.427)-F(1.668) + P(1.668) - P(2.427);
R2;

0.8441 - 0.2615 + 0.2061 - 0.2635

F(2.427)
F(1.668) 
P(1.668) 
P(2.427);

#Dalla funzione di probabilità P(x), determinare qual è il valore minimo di x per cui P(x)=0.2061.
R3_2 <- P(1.668) #più giusto prb
R3_2
fractions(R3_2)

