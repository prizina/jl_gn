library(explore)
library(dplyr)

data("mtcars")

head(mtcars)

summary(mtcars)

hist(mtcars$mpg,
     col = 'steelblue',
     main = 'Histogram',
     xlab = 'mpg',
     ylab = 'Frequency')

mtcars %>%
  explore(gear)

mtcars %>%
  select(gear, mpg, hp, cyl, am) %>%
  explore_all(target = gear)

# comment by gn