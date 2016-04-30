#!/bin/bash

for((i=348; i<450; i+=2))
do
	file=90.$i
	output=histo2_&i.dat

	sed -n '111,160p' $file > $output
done
