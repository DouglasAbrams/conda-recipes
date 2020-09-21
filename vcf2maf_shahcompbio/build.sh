#!/bin/bash
mkdir -p $PREFIX/bin
cp $RECIPE_DIR/vcf2maf $PREFIX/bin
chmod a+x $PREFIX/bin/vcf2maf
