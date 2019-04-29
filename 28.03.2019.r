library(MASS)

#valore di c
max_val_distribuzione=13
c<-fractions(1/max_val_distribuzione^2)
c

f <- function(x){
    ifelse(0<=x && x <= 13,res <-c*x^2,
        ifelse(x<=0,res<-0,res<-1))
            return(res)
}

#plot(f,to=100)

#prob intervallo (1.694, 4.199]
res2 <- f(4.199)-f(1.694)
res2

#determinare t per l'intervallo (2,t] abbia prob 0.41
ft <- f(2) + fractions(41/100)
ft
t2=ft/c
t2
t_res<-sqrt(t2)
t_res

#t<-8.560958
#t
