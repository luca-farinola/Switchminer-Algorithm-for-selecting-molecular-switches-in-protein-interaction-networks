getAPCCdistribution <- function(attribute){
  
  m <- min(attribute$APCC) - 0.1
  M <- max(attribute$APCC) + 0.1
  
  ind <- which(attribute$Hub_classification == "no hub")
  if(length(ind) > 0) attribute <- attribute[-ind,]
  
  p <- ggplot(attribute, aes(x=APCC)) + geom_density(color="darkblue", fill="lightblue") +
    scale_x_continuous(expand = c(0, 0), limits = c(m,M)) + scale_y_continuous(expand = c(0, 0)) +
    theme(panel.background = element_rect(fill = "white", colour = "black", size = 1)) +
    labs(x = "Average Correlation Coefficient (ACC)", y = "Probability density") +
    ggtitle('Average correlation of genes (VCM)') +
    theme(plot.title = element_text(size = 25), axis.title = element_text(size=20), axis.text = element_text(size=20))
    theme_classic()
  
  p
  
}

