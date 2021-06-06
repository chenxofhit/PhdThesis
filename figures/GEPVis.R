library("igraph")
library(RColorBrewer)
library(ggplot2)

setwd('/Users/chenx/Documents/Exp/scGRNHunter/')

# {6,8,14}


dd <- read.table("/Users/chenx/Documents/Report/2019Graduation/PhDThesis/figures/GEP8.key_regulators.tsv.cs.network.tsv",header = T)
dd <- read.table("/Users/chenx/Documents/Report/2019Graduation/PhDThesis/figures/GEP14.key_regulators.tsv.cs.network.tsv",header = T)


#dd <- read.table("/Users/chenx/Documents/Report/2019Graduation/PhDThesis/figures/c1.seurat.key_regulators.tsv.cs.network.tsv",header = T)

gg <- graph.data.frame(dd, directed=FALSE)

V(gg)$color <- ifelse(V(gg)$name %in% dd$tg, "red", "blue")

V(gg)$frame.color <- NA # 不顯示點邊框
V(gg)$label.cex <- 0.5

#pdf('/Users/chenx/Downloads/GEP8.seurat.pdf',width=10,height=10,paper='special')

#plot(gg,vertex.size=10,layout=layout.auto)

coords <- layout_in_circle(gg)

plot(gg, layout = coords,vertex.size=7)


# List of degrees
G.degrees <- degree(gg)

# Let's count the frequencies of each degree
G.degree.histogram <- as.data.frame(table(G.degrees))

# Need to convert the first column to numbers, otherwise
# the log-log thing will not work (that's fair...)
G.degree.histogram[,1] <- as.numeric(paste(G.degree.histogram[,1]))

# Now, plot it!
ggplot(G.degree.histogram, aes(x = G.degrees, y = Freq)) +
  geom_point() +
  scale_x_continuous("Degree\n(nodes with this amount of connections)",
                     breaks = c(1, 3, 10, 30, 100, 300)) +
  scale_y_continuous("Frequency\n(how many of them)",
                     breaks = c(1, 3, 10, 30, 100, 300, 1000)) +
  ggtitle("Degree Distribution (log-log)") +
  theme_classic() +
  theme(axis.title.x = element_text(size = 11),
        plot.title = element_text(hjust = 0.5, vjust = 0, size = 14, 
                                  face = "bold")) 

#dev.off()



