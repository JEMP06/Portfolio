# Session 10

pt(2.20, 5, lower.tail = F)
qt(0.025,5, lower.tail = F)

# Ho =  Miu1 <= Miu2 , Ha: Miu > Miu2
# desp = Despues , ant = Antes

desp <- c(6, 6, 7, 4, 3, 9, 7, 6)
ant <- c(5, 4, 7, 3, 5, 8, 5, 6)

library(readxl)
t.test(x = desp, y = ant,
       alternative = c("greater"),
       paired = T, conf.level = 0.95)

