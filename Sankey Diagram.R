
library(networkD3)

nodes <- data.frame(name = c("A", "B", "C", "X", "Y"))

links <- data.frame(
  source = c(0, 0, 1, 2),
  target = c(3, 4, 3, 4),
  value = c(20, 20, 15, 25)
)

sankeyNetwork(Links = links, Nodes = nodes,
              Source = "source", Target = "target",
              Value = "value", NodeID = "name")
