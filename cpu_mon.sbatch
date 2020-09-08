#!/bin/bash

#SBATCH --job-name=cpu_usage
#SBATCH --output=/home/s.chakravarty/ABS/userslice-optimisaton/outputs/result.out
#SBATCH --error=/home/s.chakravarty/ABS/userslice-optimisaton/errors/fault.err 
#SBATCH --partition express
#SBATCH --nodes=1

cd ~/ABS/
./abs userslice-optimisaton/cpu_mon.abs 4 9 0.008

