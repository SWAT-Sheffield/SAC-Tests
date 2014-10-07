#!/bin/bash

source_dir=../../sac/sac/src


#Copy configs to sac dir
cp ./gdfini.par $source_dir/../vac.par

cd $source_dir

make cleanall

./setvac -g=100,100 -d=22 -u=default -p=mhd -off=mpi

./setvac -s

make vac

