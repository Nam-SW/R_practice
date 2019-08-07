library(dplyr)
exam <- read.csv("C:\\R workspace\\testProject\\resource\\csv_exam.csv")
exam

exam %>% 
  mutate(total = math + english + science) %>% 
  head

exam %>% 
  mutate(total = math + english + science,
         mean = (math + english + science)/3) %>% 
  head

exam %>% 
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>% 
  head

exam %>% 
  mutate(total = math + english + science) %>% 
  arrange(total) %>% 
  head


mpg <- as.data.frame(ggplot2::mpg)
mpg2 <- mpg %>% mutate(sum = cty + hwy)
mpg2 <- mpg2 %>% mutate(mean = sum / 2)
mpg2 %>% arrange(desc(mean)) %>% 
  head(3)

mpg %>% mutate(sum = cty + hwy,
               mean = (cty + hwy) / 2) %>% 
  arrange(desc(mean)) %>% 
  head(3)
