#!/usr/bin/env Rscript

library(maftools)


read_maf = function(maf){
    return(read.maf(maf))
}

oncoplot = function(read_maf, oncoplot_path){
    png(filename=oncoplot_path)
    maftools::oncoplot(maf=read_maf, top=15)
    dev.off()
}

maf_summary = function(read_maf, maf_summary_path){
    png(filename=maf_summary_path)
    maftools::plotmafSummary(maf = read_maf, rmOutlier = TRUE, addStat = 'median', dashboard = TRUE, titvRaw = FALSE)
    dev.off()
}

somatic_interaction_plot = function(read_maf, somatic_interaction_plot_path){
    png(filename=somatic_interaction_plot_path)
    maftools::somaticInteractions(maf = read_maf, top=15, pvalue = c(0.05, 0.1))
    dev.off()
}


main = function(){
    args = commandArgs(trailingOnly=TRUE)
    
    maf_file = args[1]
    filtered_maf_file = args[2]
    oncoplot_path = args[3]
    somatic_interactions = args[4]
    mafsummary = args[5]
    unfiltmaf = maftools::read.maf(maf=maf_file)
    filtmaf = maftools::read.maf(maf=filtered_maf_file)
    oncoplot(filtmaf, oncoplot_path)

    maf_summary(unfiltmaf, mafsummary)

    somatic_interaction_plot(unfiltmaf, somatic_interactions)

}

main()