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
  
  # Elbow method
  p <- fviz_nbclust(w_adj, kmeans, method = "wss", iter.max = iter_max, nstart = num_repeats) +
    geom_vline(xintercept = num_clusters, linetype = 2) + # add line for better visualisation
    labs(subtitle = "Elbow method") # add subtitle
  
  print(p)
  
}



