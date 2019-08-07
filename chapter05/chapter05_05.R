library(dplyr)
exam <- read.csv("C:\\R workspace\\testProject\\resource\\csv_exam.csv")
exam

exam %>% summarise(mean_math = mean(math))

exam %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math),
            sd_math = sd(math),
            sum_math = sum(math),
            min_math = min(math),
            median_math = median(math),
            max_math = max(math),
            n = n())

mpg <- as.data.frame(ggplot2::mpg)
mpg %>% 
  group_by(manufacturer, drv) %>% 
  summarise(mean_efficiency = mean((cty + hwy)/2))


# 직접 해보세요..?
mpg %>% 
  group_by(manufacturer) %>% 
  filter(class == "suv") %>% 
  mutate(tot = (cty + hwy) / 2) %>% 
  summarise(mean_tot = mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% 
  head(5)


# 혼자서 해보기
mpg %>% 
  group_by(class) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty))

mpg %>% 
  group_by(manufacturer) %>% 
  summarise(mean_hwy = mean(hwy)) %>% 
  arrange(desc(mean_hwy)) %>% 
  head(3)

mpg %>% 
  group_by(manufacturer) %>% 
  filter(class == "compact") %>% 
  summarise(count_compact = n()) %>% 
  arrange(desc(count_compact))
  