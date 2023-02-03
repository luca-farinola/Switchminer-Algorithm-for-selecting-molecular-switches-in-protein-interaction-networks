getScreePlot <- function(w_adj){
  
  ########################################
  # input parameters
  
  #num_clusters <- input_parameter$num_clusters
  #iter_max <- input_parameter$iter_max
  #num_repeats <- input_parameter$num_repeats
  ########################################

  num_clusters <- 4         # set the number of clusters for k-means
  iter_max <- 100           # set the maximum number of iterations allowed
  num_repeats <- 5          # set the number of times to repeat the clustering (Replicates)
  c <- fviz_nbclust(w_adj, kmeans, method = "wss", iter.max = iter_max, nstart = num_repeats)
  c <- c$data
  library("scales")
  # Elbow method
  c$clusters <- as.numeric(c$clusters)
  c$y <- as.numeric(c$y)
  
  p <- ggplot(c,aes(x = clusters,y = y)) +
    geom_point() + geom_line(color = 'blue') +
    geom_vline(xintercept = num_clusters, linetype = 2) +
    ggtitle('Elbow plot clusters selection (DCM)') +
    labs(x = "Number of Clusters k", y = "Total Within Sum of Squares") +
    scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10)) +
    theme_classic() +
    theme(plot.title = element_text(size = 25), axis.title = element_text(size=20), axis.text = element_text(size=20))
  
  print(p)
  
}
