library(dplyr)
library(ggplot2)
economics <- as.data.frame(ggplot2::economics)

ggplot(data = economics, aes(x = date, y = unemploy)) + geom_line()

ggplot(data = economics, aes(x = date, y = psavert)) + geom_line()
