#!/bin/bash

source_dir=../../sac/sac/src

rm ./*out
rm ./*log

#Copy configs to sac dir
rm $source_dir/../vac.par

cd $source_dir

make cleanall

