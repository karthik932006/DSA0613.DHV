
library(ggalluvial)

alluvial_df <- sub_df %>% 
  rename(axis1 = Category, axis2 = Subcategory, y = Value)

ggplot(alluvial_df,
       aes(axis1 = axis1, axis2 = axis2, y = y)) +
  geom_alluvium(aes(fill = axis1)) +
  geom_stratum() +
  geom_text(stat = "stratum", aes(label = after_stat(stratum)))
