#!/bin/bash

mkdir -p $PREFIX/bin
mkdir -p $PREFIX/lib

export INCLUDE_PATH=$PREFIX/include
export C_INCLUDE_PATH=$PREFIX/include
export CPLUS_INCLUDE_PATH=$PREFIX/include
export LIBRARY_PATH=$PREFIX/lib

cp $RECIPE_DIR/Makefile ./
make STATIC=1 PARALLEL=0 -B src/delly
cp src/delly $PREFIX/bin/delly
cp variantFiltering/somaticVariants/somaticFilter.py $PREFIX/bin/dellySomaticFilter
chmod a+x $PREFIX/bin/dellySomaticFilter

cd variantFiltering
cp $RECIPE_DIR/setup.py ./
$PYTHON setup.py install
