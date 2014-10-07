#!/bin/bash

source_dir=../../sac/sac/src

# Distribute the data
#../../distribution -s=1 zero1_ot_asc_252.ini zero1_ot_asc_252_np0202.ini

#Copy configs to sac dir
cp ./vacusr.t.OT $source_dir
cp ./vacusrpar.t.OT $source_dir
cp ./OrsagTang.par $source_dir/../vac.par

cd $source_dir

make cleanall

./setvac -g=128,128 -d=22 -u=OT -p=mhd -on=mpi
#./setvac -g=252,252 -d=22 -u=OT -p=mhd -off=mpi

./setvac -s

make vac

