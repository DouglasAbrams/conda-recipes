#!/bin/bash


# Install custom scripts for running qc
mkdir -p $PREFIX/bin
cp $RECIPE_DIR/scripts/report.Rmd $PREFIX/bin
cp $RECIPE_DIR/scripts/run_report.sh $PREFIX/bin
cp $RECIPE_DIR/scripts/plots.R $PREFIX/bin

chmod a+x $PREFIX/bin/report.Rmd
chmod a+x $PREFIX/bin/run_report.sh
chmod a+x $PREFIX/bin/plots.R
