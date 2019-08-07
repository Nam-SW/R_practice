midwest <- as.data.frame(ggplot2::midwest)
summary(midwest)

library(dplyr)
midwest <- rename(midwest, total = poptotal)
midwest <- rename(midwest, asian = popasian)

midwest$asian_percent <- (midwest$asian / midwest$total) * 100
hist(midwest$asian_percent)

mean(midwest$asian_percent)
midwest$asian_people <- ifelse(midwest$asian_percent > mean(midwest$asian_percent), "large", "small")

table(midwest$asian_people)
library(ggplot2)
qplot(midwest$asian_people)
