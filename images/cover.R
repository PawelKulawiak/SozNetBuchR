library(igraph)
set.seed(13)
GR <- erdos.renyi.game(
  12,
  0.2,
  type = c("gnp", "gnm"),
  directed = F,
  loops = FALSE
)

par(mar = rep(0, 4), bg="lightgray")
plot(GR,
     vertex.label = NA,
     mark.groups = list(c(1,7,3,4)),
     mark.col = "skyblue", alpha = 0.3,
     mark.border = F,
     mark.expand = 20,
     vertex.color = sample(palette.colors(9, palette = "Tableau"), 12, replace = T),
     edge.color = sample(palette.colors(9, palette = "Tableau"), 13, replace = T),
     vertex.frame.color = NA,
     vertex.shape = sample(c("circle", "circle", "circle", "square"), 12, replace = T),
     vertex.size = sample(c(20, 30), 12, replace = T),
     edge.width = sample(c(8, 12), 12, replace = T))
