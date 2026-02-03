set.seed(123)

df <- data.frame(
  Category = rep(c("A","B","C"), each = 40),
  Value = rnorm(120, mean = 50, sd = 8),
  X = rnorm(120),
  Y = rnorm(120)
)
library(ggplot2)
library(dplyr)

ci_df <- df %>%
  group_by(Category) %>%
  summarise(
    Mean = mean(Value),
    SD = sd(Value)
  )

ggplot(ci_df, aes(x = Category, y = Mean)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean + SD))
