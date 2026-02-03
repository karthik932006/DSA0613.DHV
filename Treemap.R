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
install.packages("treemapify")
library(treemapify)

ggplot(prop_df, aes(area = Value, fill = Category, label = Category)) +
  geom_treemap() +
  geom_treemap_text(colour = "white", place = "centre")
