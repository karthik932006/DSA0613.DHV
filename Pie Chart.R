library(dplyr)

prop_df <- data.frame(
  Category = c("A", "B", "C"),
  Value = c(40, 35, 25)
)

sub_df <- data.frame(
  Category = rep(c("A", "B", "C"), each = 2),
  Subcategory = rep(c("X", "Y"), 3),
  Value = c(20, 20, 15, 20, 10, 15)
)
library(ggplot2)

ggplot(prop_df, aes(x = "", y = Value, fill = Category)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y")
