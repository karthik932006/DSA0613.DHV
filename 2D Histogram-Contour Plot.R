set.seed(123)

df <- data.frame(
  Category = rep(c("A","B","C"), each = 40),
  Value = rnorm(120, mean = 50, sd = 8),
  X = rnorm(120),
  Y = rnorm(120)
)
ggplot(df, aes(x = X, y = Y)) +
  geom_bin2d()
