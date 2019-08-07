library(dplyr)
exam <- read.csv("C:\\R workspace\\testProject\\resource\\csv_exam.csv")
exam

exam %>% filter(class == 1)
exam %>% filter(class != 2)
exam %>% filter(class >= 3)
exam %>% filter(class > 4)

exam %>% filter(class == 1 & english >= 90)
exam %>% filter(science > 80 | english >= 90)

exam %>% filter(class == 1 | class == 3 | class == 5)
exam %>% filter(class %in% c(1, 3, 5))

class1 <- exam %>% filter(class == 1)
class2 <- exam %>% filter(class == 2)
mean(class1$math)
mean(class2$math)

# 혼자서 해보기 문제
mpg <- as.data.frame(ggplot2::mpg)
dis_in_4 <- mpg %>% filter(displ <= 4)
dis_out_4 <- mpg %>% filter(displ > 4) 
mean(dis_in_4$hwy)
mean(dis_out_4$hwy)
# 배기량 4 이하가 높음

audi <- mpg %>% filter(manufacturer == "audi")
toyota <- mpg %>% filter(manufacturer == "toyota")
mean(audi$cty)
mean(toyota$cty)
# 도요타가 더 높음

company <- mpg %>% filter(manufacturer %in% c("chevrolet", "ford", "honda"))
mean(company$hwy)
