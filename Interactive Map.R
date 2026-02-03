# Install the leaflet package if you haven't already
# install.packages("leaflet")

# Load the leaflet library
library(leaflet)

# Create a basic interactive map
leaflet() |>
  addTiles() |> # Add default OpenStreetMap map tiles
  setView(lng = -0.1, lat = 51.5, zoom = 6) # Set initial view to a specific location (London) and zoom level
