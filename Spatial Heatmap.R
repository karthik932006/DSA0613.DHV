set.seed(123)

geo_df <- data.frame(
  Longitude = runif(30, 77, 80),
  Latitude  = runif(30, 8, 13),
  Value     = rnorm(30, mean = 50, sd = 10)
)
library(ggplot2)
ggplot(geo_df, aes(x = Longitude, y = Latitude)) +
  stat_density2d(aes(fill = ..level..), geom = "polygon")
