library(dplyr)
outlier <- data.frame(sex = c(1, 2, 1, 3, 2, 1),
                      score = c(5, 4, 3, 4, 2, 6))
outlier

table(outlier$sex)
table(outlier$score)

outlier$sex <- ifelse(outlier$sex == 1 | outlier$sex == 2, outlier$sex, NA)
outlier$score <- ifelse(outlier$score < 1 | outlier$score > 5, NA, outlier$score)
outlier

outlier %>% 
  filter(!is.na(sex), !is.na(score)) %>% 
  group_by(sex) %>% 
  summarise(mean_score = mean(score))


mpg <- as.data.frame(ggplot2::mpg)
boxplot(mpg$hwy)
boxplot(mpg$hwy)$stats # 상자 그림 통계치 출력
# 아래쪽 극단치 경계값
# 1사분위 수
# 중앙값
# 3사분위 수
# 위쪽 극단치 경계값

mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)
mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy, na.rm = T))
