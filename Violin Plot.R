set.seed(123)

df <- data.frame(
  Category = rep(c("A", "B", "C"), each = 50),
  Subcategory = rep(c("X", "Y"), 75),
  Value = rnorm(150, mean = 50, sd = 10)
)
ggplot(df, aes(x = Category, y = Value)) +
  geom_violin()
