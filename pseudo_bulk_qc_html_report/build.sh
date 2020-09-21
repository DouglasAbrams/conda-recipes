#!/bin/bashls


# Install custom scripts for running qc
mkdir -p $PREFIX/bin
cp $RECIPE_DIR/scripts/mergemafs.R $PREFIX/bin
cp $RECIPE_DIR/scripts/mergesnvs.R $PREFIX/bin
cp $RECIPE_DIR/scripts/mutationreport.Rmd $PREFIX/bin
cp $RECIPE_DIR/scripts/report.Rmd $PREFIX/bin
cp $RECIPE_DIR/scripts/run_report.sh $PREFIX/bin
cp $RECIPE_DIR/scripts/run_mutationreport.sh $PREFIX/bin

chmod a+x $PREFIX/bin/mergemafs.R
chmod a+x $PREFIX/bin/mergesnvs.R
chmod a+x $PREFIX/bin/mutationreport.Rmd
chmod a+x $PREFIX/bin/report.Rmd
chmod a+x $PREFIX/bin/run_report.sh
chmod a+x $PREFIX/bin/run_mutationreport.sh
