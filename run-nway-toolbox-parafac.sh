#!/usr/bin/env bash
cd matlab
matlab -nodesktop -nosplash -nodisplay < run_parafac.m | grep "Loss" -B 1
cd ..