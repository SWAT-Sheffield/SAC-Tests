#!/bin/bash

vac_dir=./sac/sac/

cd $vac_dir

mpirun -n $1 ./vac
