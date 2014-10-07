#!/bin/bash

source_dir=../../sac/sac/src

# Distribute the data
../../distribution -s=1 3D_tube_128_128_128.ini 3D_tube_128_128_128_np020202.ini 

#Copy configs to sac dir
cp ./vacusr.t.sim1_TUBE $source_dir
cp ./vacusrpar.t.sim1_TUBE $source_dir
cp ./flux_tube.par $source_dir/../vac.par

cd $source_dir

make cleanall

./setvac -g=66,66,66 -d=33 -u=sim1_TUBE -p=mhd -on=mpi

./setvac -s

make vac

