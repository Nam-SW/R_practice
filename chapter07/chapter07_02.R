library(dplyr)
library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)

df_mpg <- mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy))

# ����׷���. �⺻������ x���� ���ĺ� ������ ���ĵ�
ggplot(data = df_mpg, aes(x = drv, y = mean_hwy)) + geom_col()
# ũ������� ����. -�� ��������
ggplot(data = df_mpg, aes(x = reorder(drv, -mean_hwy), y = mean_hwy)) + geom_col()

# �� �׷���. �Էµ� ���� ��� ���������� ���� ���. ���̺��� �����ִµ�
ggplot(data = mpg, aes(x = drv)) + geom_bar()

ggplot(data = mpg, aes(x = hwy)) + geom_bar()

head(mpg)

# ȥ�ڼ� �غ���
df_mpg <- mpg %>% 
  filter(class == "suv") %>% 
  group_by(manufacturer) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty)) %>% 
  head(5)
ggplot(data = df_mpg, aes(x = reorder(manufacturer, -mean_cty), y = mean_cty)) + geom_col()

ggplot(data = mpg, aes(x = class)) + geom_bar()