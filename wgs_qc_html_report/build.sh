#!/bin/bash

mv DESCRIPTION DESCRIPTION.old
grep -v '^Priority: ' DESCRIPTION.old > DESCRIPTION

R CMD INSTALL --build .

echo $PREFIX
# Install custom scripts for running qc
mkdir -p $PREFIX/bin
cp $RECIPE_DIR/scripts/cohort_qc_report.Rmd $PREFIX/bin
cp $RECIPE_DIR/scripts/run_cohort_qc_report.sh $PREFIX/bin
cp $RECIPE_DIR/scripts/maftools_plots.R $PREFIX/bin

chmod a+x $PREFIX/bin/cohort_qc_report.Rmd
chmod a+x $PREFIX/bin/run_cohort_qc_report.sh
chmod a+x $PREFIX/bin/maftools_plots.R
echo $PREFIX/bin

