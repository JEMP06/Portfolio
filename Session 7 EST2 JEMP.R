# Session 7 // Air Raiting

library(tidyverse)
library(readxl)
AirRating <-read_excel(file.choose())
t.test(AirRating, mu=7, alternative = c("greater"), conf.level = 0.99)
View(AirRating)
sd(AirRating$Rating)
mean(AirRating$Rating)

t.test(AirRating, mu=7, alternative = c("less"), conf.level = 0.99)
