# ggplot2 패키지는 배경->그래프->설정(ex.색)을 사용하는 레이어 구조를 사용한다.
library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)

ggplot(data = mpg, aes(x = displ, y = hwy)) + # 배경 설정 (데이터, 축)
  geom_point() + # 그래프 추가 (그래프 종류)
  xlim(3, 6) + # x좌표 제한 (세부 설정)
  ylim(10, 30) # y좌표 제한

# 혼자서 해보기
ggplot(data = mpg, aes(x = cty, y = hwy)) + 
  geom_point()

midwest <- as.data.frame(ggplot2::midwest)
ggplot(data = midwest, aes(x = poptotal, y = popasian)) + 
  geom_point() +
  xlim(0, 500000) +
  ylim(0, 10000)

