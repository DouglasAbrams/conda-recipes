#!/bin/bash


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


R -e "rmarkdown::render('$DIR/report.Rmd',output_file = '$1',  params=list(sample_id='$2', mutations_per_cell_png='$3', summary_csv='$4', snvs_high_impact_csv='$5', snvs_all_csv='$6', trinuc_csv='$7', snv_adjacent_distance_png='$8', snv_genome_count_png='$9', snv_cell_counts_png='${10}', snv_alt_counts_png='${11}', rearranegementtype_distribution_destruct_unfiltered_png='${12}', chromosome_types_destruct_unfiltered_png='${13}' , rearranegementtype_distribution_destruct_filtered_png='${14}', chromosome_types_destruct_filtered_png='${15}', rearranegementtype_distribution_lumpy_unfiltered_png='${16}', chromosome_types_lumpy_unfiltered_png='${17}', BAFplot_png='${18}', cn_plot_png='${19}', datatype_summary_csv='${20}', maf='${21}'))"

