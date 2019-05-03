    library(MASS)
    #Delle caramelle artiginali hanno un peso distribuito come una normale con media $\mu = 5.71$g 
    #e scarto quadratico medio $\sigma = 0.86$g. 
    #Al controllo qualità le caramelle con un peso superiore a 7.1245741g o inferiore a 4.5016385 vengono scartate.

    Xmax=7.1245741;
    Xmin = 4.5016385
    mu = 5.71;
    sigma=0.86;


    zmax<- (Xmax-mu)/sigma
    #zmax
    pr_max<-pnorm(zmax);
    #pr_max

    zmin<- (Xmin-mu)/sigma
    #zmin
    pr_min<-pnorm(zmin);
    #pr_min

    #1. Qual è la probabilità che una caramella sia sopra il peso soglia?
    peso_sup<-1-pr_max;
    peso_sup
    fractions(1-pr_max)
    
    #2.  In media, ogni quante caramelle se ne presenta una da scartare?
    peso_inf<-pr_min;
    scartare<- (peso_sup + peso_inf);
    1/scartare;
    fractions(1/scartare);

    #3. Qual è il valore standardizzato corrispondente a 4.5016385?
    X<-4.5016385;
    z<- (X-mu)/sigma;
    z
    fractions(z)
