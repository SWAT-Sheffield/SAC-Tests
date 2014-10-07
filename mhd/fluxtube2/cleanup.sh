#!/bin/bash

source_dir=../../sac/sac/src

# Distribute the data
rm ./3D_196_100_100_np020202_*.ini 

#Copy configs to sac dir
rm $source_dir/vacusr.t.sim1_TUBE
rm $source_dir/vacusrpar.t.sim1_TUBE
rm $source_dir/flux_tube.par

cd $source_dir

make cleanall

