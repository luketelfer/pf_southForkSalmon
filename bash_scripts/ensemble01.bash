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
runname=$2
basedir="scratch/pf_southForkSalmon"
outdir="${basedir}/output_files/${rundir}/${runname}"
CONTAINER="scratch/pf_southForkSalmon/parflow_latest.sif"

module load "openmpi/gcc/64/1.10.7"
module load "singularity/3.5.2"

cd ..

singularity run --bind /scratch ${CONTAINER} ${basedir}/ensemble01.tcl $rundir $runname
find ${outdir} ! -name '*.08760.pfb' ! -name 'clm.rst.*' -type f -delete
mv ${outdir}/${runname}.out.press.08760.pfb ${outdir}/press.init.pfb

