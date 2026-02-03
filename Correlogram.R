set.seed(123)

df <- data.frame(
  X = rnorm(100),
  Y = rnorm(100),
  Z = runif(100, 10, 100)
)

multi_df <- data.frame(
  A = rnorm(100),
  B = rnorm(100),
  C = rnorm(100),
  D = rnorm(100)
)

edges <- data.frame(
  from = c("A","A","B","C"),
  to   = c("B","C","D","D")
)

library(corrplot)

corrplot(cor(multi_df))
