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
na.omit(df) # omit�� �м��� �ʿ����� ���� �����Ͱ� NA���� ������. ���� ���� ����� ����.

mean(df$score, na.rm = T)

exam <- read.csv("C:/R workspace/testProject/resource/csv_exam.csv")
exam[c(3, 8, 15), "math"] <- NA
exam

exam %>% summarise(mean_math = mean(math))
exam %>% summarise(mean_math = mean(math, na.rm = T))

exam %>% summarise(mean_math = mean(math, na.rm = T),
                   sum_math = sum(math, na.rm = T),
                   median_math = median(math, na.rm = T))


# ����ġ ��ü
mean(exam$math, na.rm = T)
exam$math <- ifelse(is.na(exam$math), 55, exam$math) # math�� NA�� 55�� ��ü
table(is.na(exam$math))
exam
mean(exam$math)                                      # �������� ȣ�� ����




# ȥ�ڼ� �غ���
mpg <- as.data.frame(ggplot2::mpg)
mpg[c(65, 124, 131, 153, 212), "hwy"] <- NA

table(is.na(mpg$hwy))

mpg %>% 
  filter(!is.na(hwy)) %>% 
  group_by(trans) %>% 
  summarise(mean_hwy = mean(hwy))