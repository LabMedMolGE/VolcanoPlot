tab=read.table("Proteins_diff_exp.txt",header=TRUE)
 qvalue=tab$q_value
 diff=tab$Difference
 pdf("Volcano_plot.pdf")
 plot(diff,-log10(qvalue),col=c(ifelse(qvalue>0.05,"grey",ifelse(diff>0,"red","cornflowerblue"))),pch=19)
 abline(h=1.3,lty=5)
 dev.off()