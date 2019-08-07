english <- c(90, 80, 60, 70)
math <- c(50, 60, 100, 20)

table <- data.frame(english, math)
table

class <- c(1, 1, 2, 3)

table <- data.frame(english, math, class)
table

mean(table$english)
mean(table$math)

table <- data.frame(english = c(90, 80, 60, 70),
                    math = c(50, 60, 100, 20),
                    class = c(1, 1, 2, 3))
table
