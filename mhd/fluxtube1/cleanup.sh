#!/bin/bash

source_dir=../../sac/sac/src

# Distribute the data
rm ./3D_tube_128_128_128_np020202_*.ini 

cd $source_dir

make cleanall

