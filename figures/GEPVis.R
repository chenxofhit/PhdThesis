library("igraph")
library(RColorBrewer)

# {6,8,14}

dd <- read.table("/Users/chenx/Downloads/GEP8.key_regulators.tsv.cs.network.tsv",header = T)

gg <- graph.data.frame(dd, directed=FALSE)

V(gg)$color <- ifelse(V(gg)$name %in% dd$tg, "red", "blue")

V(gg)$frame.color <- NA # 不顯示點邊框
V(gg)$label.cex <- 0.7

pdf('/Users/chenx/Downloads/GEP8.pdf',width=10,height=10,paper='special')

plot(gg,vertex.size=10,layout=layout.auto)
dev.off()



