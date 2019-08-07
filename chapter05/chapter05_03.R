library(dplyr)
exam <- read.csv("C:\\R workspace\\testProject\\resource\\csv_exam.csv")
exam

exam %>% arrange(math)
exam %>% arrange(desc(math))

mpg <- as.data.frame(ggplot2::mpg)
summary(mpg)

mpg %>% 
  filter(manufacturer == "audi") %>% 
  arrange(desc(hwy)) %>% 
  head(5)
