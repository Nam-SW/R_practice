library(dplyr)
library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)

df_mpg <- mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy))

# 막대그래프. 기본적으로 x축은 알파벳 순으로 정렬됨
ggplot(data = df_mpg, aes(x = drv, y = mean_hwy)) + geom_col()
# 크기순으로 정렬. -는 내림차순
ggplot(data = df_mpg, aes(x = reorder(drv, -mean_hwy), y = mean_hwy)) + geom_col()

# 빈도 그래프. 입력된 값이 몇번 나오는지에 대해 출력. 테이블을 보여주는듯
ggplot(data = mpg, aes(x = drv)) + geom_bar()

ggplot(data = mpg, aes(x = hwy)) + geom_bar()

head(mpg)

# 혼자서 해보기
df_mpg <- mpg %>% 
  filter(class == "suv") %>% 
  group_by(manufacturer) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty)) %>% 
  head(5)
ggplot(data = df_mpg, aes(x = reorder(manufacturer, -mean_cty), y = mean_cty)) + geom_col()

ggplot(data = mpg, aes(x = class)) + geom_bar()
