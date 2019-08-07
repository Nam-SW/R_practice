df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5, 4, 3, 4, NA))
df

is.na(df)
table(is.na(df))

table(is.na(df$sex))
table(is.na(df$score))

df
mean(df$score)
sum(df$score)

library(dplyr)
df %>% filter(is.na(score))
df %>% filter(!is.na(score))
df %>% filter(!is.na(sex))

df %>% filter(!is.na(sex) & !is.na(score))
na.omit(df) # omit은 분석에 필요하지 않은 데이터가 NA여도 제거함. 따라서 위의 방식을 권함.

mean(df$score, na.rm = T)

exam <- read.csv("C:/R workspace/testProject/resource/csv_exam.csv")
exam[c(3, 8, 15), "math"] <- NA
exam

exam %>% summarise(mean_math = mean(math))
exam %>% summarise(mean_math = mean(math, na.rm = T))

exam %>% summarise(mean_math = mean(math, na.rm = T),
                   sum_math = sum(math, na.rm = T),
                   median_math = median(math, na.rm = T))


# 결측치 대체
mean(exam$math, na.rm = T)
exam$math <- ifelse(is.na(exam$math), 55, exam$math) # math가 NA면 55로 대체
table(is.na(exam$math))
exam
mean(exam$math)                                      # 정상적을 호출 가능




# 혼자서 해보기
mpg <- as.data.frame(ggplot2::mpg)
mpg[c(65, 124, 131, 153, 212), "hwy"] <- NA

table(is.na(mpg$hwy))

mpg %>% 
  filter(!is.na(hwy)) %>% 
  group_by(trans) %>% 
  summarise(mean_hwy = mean(hwy))
