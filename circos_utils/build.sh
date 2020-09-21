#!/bin/bash


# Install custom scripts for running qc
mkdir -p $PREFIX/bin
cp $RECIPE_DIR/scripts/circos.R $PREFIX/bin

chmod a+x $PREFIX/bin/circos.R
