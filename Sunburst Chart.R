# Install the plotly package if you haven't already
# install.packages("plotly")

# Load the library

library(plotly)

# Create sample data in a data frame
# The data needs columns for labels, their parent in the hierarchy, and a value
data <- data.frame(
  ids = c("Total", "Fruits", "Vegetables", "Apple", "Banana", "Carrot", "Broccoli"),
  labels = c("Produce", "Fruits", "Vegetables", "Apple", "Banana", "Carrot", "Broccoli"),
  parents = c("", "Total", "Total", "Fruits", "Fruits", "Vegetables", "Vegetables"),
  values = c(100, 70, 30, 40, 30, 20, 10)
)

# Create the sunburst chart
fig <- plot_ly(
  data,
  ids = ~ids,
  labels = ~labels,
  parents = ~parents,
  values = ~values,
  type = 'sunburst',
  branchvalues = 'total' # Ensures outer rings add up to inner ring values
)

# Customize the layout
fig <- fig %>% layout(
  title = "Sunburst Chart of Produce Sales",
  sunburstcolorway = c("#636efa", "#EF553B", "#00cc96"), # Custom colors
  extendsunburstcolors = TRUE
)

# Display the chart
fig
