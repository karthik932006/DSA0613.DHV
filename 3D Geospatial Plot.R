set.seed(123)

geo_df <- data.frame(
  Longitude = runif(30, 77, 80),
  Latitude  = runif(30, 8, 13),
  Value     = rnorm(30, mean = 50, sd = 10)
)

library(rgl)

plot3d(
  geo_df$Longitude,
  geo_df$Latitude,
  geo_df$Value,
  col = "blue"
)
