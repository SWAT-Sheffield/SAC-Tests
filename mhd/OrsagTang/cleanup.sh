#!/bin/bash

source_dir=../../sac/sac/src

# Distribute the data
rm ./zero1_ot_asc_252_np0202_*.ini 

cd $source_dir
rm ./vacusrpar.t.OT
rm ./vacusr.t.OT

make cleanall

