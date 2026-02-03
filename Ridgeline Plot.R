set.seed(123)

df <- data.frame(
  Category = rep(c("A", "B", "C"), each = 50),
  Subcategory = rep(c("X", "Y"), 75),
  Value = rnorm(150, mean = 50, sd = 10)
)
library(ggridges)

ggplot(df, aes(x = Value, y = Category)) +
  geom_density_ridges()
