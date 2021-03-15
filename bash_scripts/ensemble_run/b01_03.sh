#!/bin/bash

p="shortq"
b="b01"
run="03"

s="A"
sbatch -p ${p} -J ${b}-${s}-00 -o ../slurm_out/${b}/${s}/${b}${s}00.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}00
sbatch -p ${p} -J ${b}-${s}-01 -o ../slurm_out/${b}/${s}/${b}${s}01.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}01
sbatch -p ${p} -J ${b}-${s}-02 -o ../slurm_out/${b}/${s}/${b}${s}02.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}02
sbatch -p ${p} -J ${b}-${s}-03 -o ../slurm_out/${b}/${s}/${b}${s}03.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}03
sbatch -p ${p} -J ${b}-${s}-04 -o ../slurm_out/${b}/${s}/${b}${s}04.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}04
sbatch -p ${p} -J ${b}-${s}-05 -o ../slurm_out/${b}/${s}/${b}${s}05.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}05
sbatch -p ${p} -J ${b}-${s}-06 -o ../slurm_out/${b}/${s}/${b}${s}06.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}06
sbatch -p ${p} -J ${b}-${s}-07 -o ../slurm_out/${b}/${s}/${b}${s}07.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}07
sbatch -p ${p} -J ${b}-${s}-08 -o ../slurm_out/${b}/${s}/${b}${s}08.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}08
sbatch -p ${p} -J ${b}-${s}-09 -o ../slurm_out/${b}/${s}/${b}${s}09.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}09
sbatch -p ${p} -J ${b}-${s}-10 -o ../slurm_out/${b}/${s}/${b}${s}10.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}10

s="B"
sbatch -p ${p} -J ${b}-${s}-00 -o ../slurm_out/${b}/${s}/${b}${s}00.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}00
sbatch -p ${p} -J ${b}-${s}-01 -o ../slurm_out/${b}/${s}/${b}${s}01.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}01
sbatch -p ${p} -J ${b}-${s}-02 -o ../slurm_out/${b}/${s}/${b}${s}02.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}02
sbatch -p ${p} -J ${b}-${s}-03 -o ../slurm_out/${b}/${s}/${b}${s}03.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}03
sbatch -p ${p} -J ${b}-${s}-04 -o ../slurm_out/${b}/${s}/${b}${s}04.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}04
sbatch -p ${p} -J ${b}-${s}-05 -o ../slurm_out/${b}/${s}/${b}${s}05.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}05
sbatch -p ${p} -J ${b}-${s}-06 -o ../slurm_out/${b}/${s}/${b}${s}06.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}06
sbatch -p ${p} -J ${b}-${s}-07 -o ../slurm_out/${b}/${s}/${b}${s}07.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}07
sbatch -p ${p} -J ${b}-${s}-08 -o ../slurm_out/${b}/${s}/${b}${s}08.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}08
sbatch -p ${p} -J ${b}-${s}-09 -o ../slurm_out/${b}/${s}/${b}${s}09.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}09
sbatch -p ${p} -J ${b}-${s}-10 -o ../slurm_out/${b}/${s}/${b}${s}10.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}10

s="C"
sbatch -p ${p} -J ${b}-${s}-00 -o ../slurm_out/${b}/${s}/${b}${s}00.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}00
sbatch -p ${p} -J ${b}-${s}-01 -o ../slurm_out/${b}/${s}/${b}${s}01.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}01
sbatch -p ${p} -J ${b}-${s}-02 -o ../slurm_out/${b}/${s}/${b}${s}02.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}02
sbatch -p ${p} -J ${b}-${s}-03 -o ../slurm_out/${b}/${s}/${b}${s}03.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}03
sbatch -p ${p} -J ${b}-${s}-04 -o ../slurm_out/${b}/${s}/${b}${s}04.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}04
sbatch -p ${p} -J ${b}-${s}-05 -o ../slurm_out/${b}/${s}/${b}${s}05.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}05
sbatch -p ${p} -J ${b}-${s}-06 -o ../slurm_out/${b}/${s}/${b}${s}06.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}06
sbatch -p ${p} -J ${b}-${s}-07 -o ../slurm_out/${b}/${s}/${b}${s}07.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}07
sbatch -p ${p} -J ${b}-${s}-08 -o ../slurm_out/${b}/${s}/${b}${s}08.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}08
sbatch -p ${p} -J ${b}-${s}-09 -o ../slurm_out/${b}/${s}/${b}${s}09.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}09
sbatch -p ${p} -J ${b}-${s}-10 -o ../slurm_out/${b}/${s}/${b}${s}10.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}10

s="D"
sbatch -p ${p} -J ${b}-${s}-00 -o ../slurm_out/${b}/${s}/${b}${s}00.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}00
sbatch -p ${p} -J ${b}-${s}-01 -o ../slurm_out/${b}/${s}/${b}${s}01.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}01
sbatch -p ${p} -J ${b}-${s}-02 -o ../slurm_out/${b}/${s}/${b}${s}02.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}02
sbatch -p ${p} -J ${b}-${s}-03 -o ../slurm_out/${b}/${s}/${b}${s}03.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}03
sbatch -p ${p} -J ${b}-${s}-04 -o ../slurm_out/${b}/${s}/${b}${s}04.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}04
sbatch -p ${p} -J ${b}-${s}-05 -o ../slurm_out/${b}/${s}/${b}${s}05.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}05
sbatch -p ${p} -J ${b}-${s}-06 -o ../slurm_out/${b}/${s}/${b}${s}06.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}06
sbatch -p ${p} -J ${b}-${s}-07 -o ../slurm_out/${b}/${s}/${b}${s}07.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}07
sbatch -p ${p} -J ${b}-${s}-08 -o ../slurm_out/${b}/${s}/${b}${s}08.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}08
sbatch -p ${p} -J ${b}-${s}-09 -o ../slurm_out/${b}/${s}/${b}${s}09.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}09
sbatch -p ${p} -J ${b}-${s}-10 -o ../slurm_out/${b}/${s}/${b}${s}10.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}10