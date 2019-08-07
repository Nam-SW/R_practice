library(dplyr)
exam <- read.csv("C:\\R workspace\\testProject\\resource\\csv_exam.csv")
exam

exam %>% select(math)
exam %>% select(id, class, english)
exam %>% select(-math)

# exam %>% select(id, class, math) %>% filter(class == 1)
exam %>% 
  select(id, class, math) %>% 
  filter(class == 1)

exam %>% 
  select(id, class, math) %>% 
  head(5)
