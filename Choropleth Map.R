set.seed(123)

geo_df <- data.frame(
  Longitude = runif(30, 77, 80),
  Latitude  = runif(30, 8, 13),
  Value     = rnorm(30, mean = 50, sd = 10)
)
library(ggplot2)

library(maps)

india_map <- map_data("world")

ggplot(india_map, aes(x = long, y = lat, group = group)) +
  geom_polygon(fill = "gray90", color = "white")
