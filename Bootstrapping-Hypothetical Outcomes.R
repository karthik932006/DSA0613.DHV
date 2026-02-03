set.seed(123)

df <- data.frame(
  Category = rep(c("A","B","C"), each = 40),
  Value = rnorm(120, mean = 50, sd = 8),
  X = rnorm(120),
  Y = rnorm(120)
)
boot_df <- data.frame(
  Value = replicate(1000, mean(sample(df$Value, replace = TRUE)))
)

ggplot(boot_df, aes(x = Value)) +
  geom_density(alpha = 0.4)
