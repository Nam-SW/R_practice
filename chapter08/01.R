install.packages("foreign")
library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

raw_welfare <- read.spss(file = "C:/R workspace/testProject/resource/Koweps_hpc10_2015_beta1.sav")
welfare <- raw_welfare
head(welfare)
tail(welfare)
View(welfare)
dim(welfare)
str(welfare)
summary(welfare)

a <- data.frame(d1 = c(1, 2, 3), d2 = c(4, 5, 6))
a <- rename(a, d3 = d1, d4 = d2)


welfare <- rename(welfare,
                  sex = h10_g3)
