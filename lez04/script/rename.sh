#!/bin/bash

NREP=1000
K1=1
K2=1001
K_MAX=`expr $K1 + $NREP - 1`

while [ $K1 -le $K_MAX ];
do
NAMEI="results/mcrep/proton/g1rep."$K1
NAMEF="results/mcrep/proton/g1rep."$K2
mv $NAMEI $NAMEF
NAMEI="results/mcrep/deuteron/g1rep."$K1
NAMEF="results/mcrep/deuteron/g1rep."$K2
mv $NAMEI $NAMEF

echo $K $NAMEI $NAMEF
K1=`expr $K1 + 1`
K2=`expr $K2 + 1`
done
