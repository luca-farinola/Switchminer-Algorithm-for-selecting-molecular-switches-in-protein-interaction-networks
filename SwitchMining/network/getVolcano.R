
getVolcano <- function(table, FC, pval) {
  
  Res_table <- table
  
  # establishing witch gene is invariant and witch is UP/DOWN regulated according to the chosen thresholds 
  
  Res_table$diffexpressed <- "INVARIANT"
  Res_table$diffexpressed[Res_table$logFC > FC & Res_table$adj.P.Val < pval] <- "UP"
  Res_table$diffexpressed[Res_table$logFC < -FC & Res_table$adj.P.Val < pval] <- "DOWN"
  
  # taking the log10 of adjusted p values for visualizzations pourposes and creating the volcano plot 
  
  log10padj <- -log10(Res_table$adj.P.Val)
  
  volcano_plot <- ggplot(data = as.data.frame(Res_table), aes(x = log10padj, y = logFC, color = diffexpressed)) + 
    geom_point() +
    scale_color_manual(values = c("DOWN" = "red", "INVARIANT" = "grey", "UP" = "blue")) +
    geom_vline(xintercept=-log10(pval), col="black", linetype = "dotted") +
    geom_hline(yintercept=c(-FC, FC), col="black", linetype = "dotted") + 
    ylim(-4,4) +
    xlim(0,30) +
    ggtitle('VCM differentially expressed') +
    theme_bw() +
    theme(plot.title = element_text(size = 25), axis.title = element_text(size=20), axis.text = element_text(size=20))
  return(volcano_plot)
  
}