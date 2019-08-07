# ggplot2 ��Ű���� ���->�׷���->����(ex.��)�� ����ϴ� ���̾� ������ ����Ѵ�.
library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)

ggplot(data = mpg, aes(x = displ, y = hwy)) + # ��� ���� (������, ��)
  geom_point() + # �׷��� �߰� (�׷��� ����)
  xlim(3, 6) + # x��ǥ ���� (���� ����)
  ylim(10, 30) # y��ǥ ����

# ȥ�ڼ� �غ���
ggplot(data = mpg, aes(x = cty, y = hwy)) + 
  geom_point()

midwest <- as.data.frame(ggplot2::midwest)
ggplot(data = midwest, aes(x = poptotal, y = popasian)) + 
  geom_point() +
  xlim(0, 500000) +
  ylim(0, 10000)
