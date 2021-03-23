#!/bin/bash
#SBATCH --job-name=pp_ctr
#SBATCH --output=out/pp_ctr.o%j.out
#SBATCH --partition=gpuq
#SBATCH --time=0-20:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=28
#SBATCH --mail-user=luketelfer@u.boisestate.edu
#SBATCH --mail-type=FAIL,END

ulimit -v unlimited
ulimit -u 1000
ulimit -s unlimited

batch=$1

basedir=/scratch/ltelfer/pf_southForkSalmon

#tar -xzf ${basedir}/output_files/${batch}.tar.gz
cd ${basedir}/pfpostproc
source activate pfanalysis

scenario=A
python ensemble.py -n ${batch}${scenario}01
python ensemble.py -n ${batch}${scenario}03
python ensemble.py -n ${batch}${scenario}05
python ensemble.py -n ${batch}${scenario}07
python ensemble.py -n ${batch}${scenario}09

scenario=B
python ensemble.py -n ${batch}${scenario}01
python ensemble.py -n ${batch}${scenario}03
python ensemble.py -n ${batch}${scenario}05
python ensemble.py -n ${batch}${scenario}07
python ensemble.py -n ${batch}${scenario}09

scenario=C
python ensemble.py -n ${batch}${scenario}01
python ensemble.py -n ${batch}${scenario}03
python ensemble.py -n ${batch}${scenario}05
python ensemble.py -n ${batch}${scenario}07
python ensemble.py -n ${batch}${scenario}09

scenario=D
python ensemble.py -n ${batch}${scenario}01
python ensemble.py -n ${batch}${scenario}03
python ensemble.py -n ${batch}${scenario}05
python ensemble.py -n ${batch}${scenario}07
python ensemble.py -n ${batch}${scenario}09

rm -r ${basedir}/output_files/${batch}
