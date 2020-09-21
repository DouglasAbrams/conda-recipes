#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

R -e "rmarkdown::render('$DIR/mutationreport.Rmd', output_file='$1', params=list(pseudobulk_group='$2', merged_filt_snvs='$3', merged_maf='$4',high_impact_maf='$5'))"
