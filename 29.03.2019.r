library(MASS)



F<- function(x) {
    return (1/(1+exp(1.8*x)))
}

plot(F)

I1 <- F(1.7)-F(0.44)
I1
fractions(I1)
max <- as.integer(.Machine$integer.max)
min <- as.integer(.Machine$integer.min)
I0 <- F(max)-F(min) - F(0)
I0
