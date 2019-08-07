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
boxplot(mpg$hwy)$stats # ���� �׸� ���ġ ���
# �Ʒ��� �ش�ġ ��谪
# 1����� ��
# �߾Ӱ�
# 3����� ��
# ���� �ش�ġ ��谪

mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)
mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy, na.rm = T))