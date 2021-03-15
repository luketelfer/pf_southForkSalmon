#!/bin/bash

p="shortq"
b="b01"
run="03"

s="A"
sbatch -p ${p} -J ${b}-${s}-01 -o ${b}/${s}/${b}${s}01.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}01
sbatch -p ${p} -J ${b}-${s}-03 -o ${b}/${s}/${b}${s}03.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}03
sbatch -p ${p} -J ${b}-${s}-05 -o ${b}/${s}/${b}${s}05.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}05
sbatch -p ${p} -J ${b}-${s}-07 -o ${b}/${s}/${b}${s}07.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}07
sbatch -p ${p} -J ${b}-${s}-09 -o ${b}/${s}/${b}${s}09.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}09

s="B"
sbatch -p ${p} -J ${b}-${s}-01 -o ${b}/${s}/${b}${s}01.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}01
sbatch -p ${p} -J ${b}-${s}-03 -o ${b}/${s}/${b}${s}03.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}03
sbatch -p ${p} -J ${b}-${s}-05 -o ${b}/${s}/${b}${s}05.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}05
sbatch -p ${p} -J ${b}-${s}-07 -o ${b}/${s}/${b}${s}07.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}07
sbatch -p ${p} -J ${b}-${s}-09 -o ${b}/${s}/${b}${s}09.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}09

s="C"
sbatch -p ${p} -J ${b}-${s}-01 -o ${b}/${s}/${b}${s}01.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}01
sbatch -p ${p} -J ${b}-${s}-03 -o ${b}/${s}/${b}${s}03.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}03
sbatch -p ${p} -J ${b}-${s}-05 -o ${b}/${s}/${b}${s}05.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}05
sbatch -p ${p} -J ${b}-${s}-07 -o ${b}/${s}/${b}${s}07.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}07
sbatch -p ${p} -J ${b}-${s}-09 -o ${b}/${s}/${b}${s}09.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}09

s="D"
sbatch -p ${p} -J ${b}-${s}-01 -o ${b}/${s}/${b}${s}01.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}01
sbatch -p ${p} -J ${b}-${s}-03 -o ${b}/${s}/${b}${s}03.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}03
sbatch -p ${p} -J ${b}-${s}-05 -o ${b}/${s}/${b}${s}05.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}05
sbatch -p ${p} -J ${b}-${s}-07 -o ${b}/${s}/${b}${s}07.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}07
sbatch -p ${p} -J ${b}-${s}-09 -o ${b}/${s}/${b}${s}09.o%j.txt ../ensemble${run}.bash ${b} ${b}${s}09