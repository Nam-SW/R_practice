df_row <- data.frame(var1 = c(1, 2, 1),
                     var2 = c(2, 3, 2))
df_row

install.packages(("dplyr"))
library(dplyr)

df_new <- df_row
df_new

df_new <- rename(df_new, v2= var2)

df_row
df_new

mpg <- as.data.frame(ggplot2::mpg)
mpg <- rename(mpg, city = cty, highway = hwy)
head(mpg)
