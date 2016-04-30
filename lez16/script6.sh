#!/bin/bash




for ((i=1; i<11; i++))
do
    file=distribuzione$i.dat
    awk '{sum+=$2} END {print sum/NR}' $file
done
