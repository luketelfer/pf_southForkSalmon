#!/bin/bash
#SBATCH --time=0-12:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mail-user=luketelfer@u.boisestate.edu
#SBATCH --mail-type=FAIL,END
#SBATCH --requeue

ulimit -v unlimited
ulimit -u 1000
ulimit -s unlimited

rundir=$1
control=$2
batch=$3

cd ..

singularity run docker://parflow/parflow control.tcl ${rundir} ${control} ${batch}

echo ${rundir}
echo ${control}
echo ${batch}
