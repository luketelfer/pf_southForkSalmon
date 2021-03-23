#!/bin/bash
#SBATCH --job-name=pp_ctr
#SBATCH --output=out/pp_ctr.o%j.out
#SBATCH --partition=gpuq
#SBATCH --time=0-00:30:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=28
#SBATCH --mail-user=luketelfer@u.boisestate.edu
#SBATCH --mail-type=FAIL,END

ulimit -v unlimited
ulimit -u 1000
ulimit -s unlimited

basedir=/scratch/ltelfer/pf_southForkSalmon/pfpostproc
cd $basedir

source activate pfanalysis

python control.py -n L
python control.py -n M
python control.py -n H

