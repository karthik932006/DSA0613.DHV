set.seed(123)

df <- data.frame(
  Category = rep(c("A","B","C"), each = 40),
  Value = rnorm(120, mean = 50, sd = 8),
  X = rnorm(120),
  Y = rnorm(120)
)
ggplot(df, aes(x = Category, y = Value)) +
  geom_jitter(alpha = 0.4, width = 0.2)
