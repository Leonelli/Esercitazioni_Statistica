library(MASS)

#falsiPositivi
falsiPositivi <- fractions(0.36)
falsiPositivi

#prodottiConParassita
prodottiConParassita <- fractions(94/100)
prodottiConParassita

#positiviReali
positiviReali <- 1-falsiPositivi
positiviReali

#positivi
positivi <- positiviReali+falsiPositivi
positivi

#PrPos
PrPos <- positivi/prodottiConParassita
PrPos

#PrVeriPos
PrVeriPos <- (PrPos * prodottiConParassita)/(prodottiConParassita*PrPos + positivi)
PrVeriPos

