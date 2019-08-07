library(ggplot2)
library(dplyr)
mpg <- as.data.frame(ggplot2::mpg)

ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()

# 사용자가 만든것들
# bit.ly/2s5cmdc

# 혼자서 해보기
ggplot(data = mpg, aes(x = class, y = cty)) + geom_boxplot()
