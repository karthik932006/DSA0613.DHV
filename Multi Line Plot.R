set.seed(123)

time_df <- data.frame(
  Date = seq.Date(
    from = as.Date("2022-01-01"),
    by = "month",
    length.out = 24
  ),
  Sales_A = cumsum(rnorm(24, 10, 5)),
  Sales_B = cumsum(rnorm(24, 8, 4))
)
library(ggplot2)
library(tidyr)

long_df <- pivot_longer(
  time_df,
  cols = c(Sales_A, Sales_B),
  names_to = "Category",
  values_to = "Sales"
)

ggplot(long_df, aes(x = Date, y = Sales, color = Category)) +
  geom_line()
