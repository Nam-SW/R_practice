library(ggplot2)
library(dplyr)
mpg <- as.data.frame(ggplot2::mpg)

ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()

# ����ڰ� ����͵�
# bit.ly/2s5cmdc

# ȥ�ڼ� �غ���
ggplot(data = mpg, aes(x = class, y = cty)) + geom_boxplot()