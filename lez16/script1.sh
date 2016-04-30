#!/bin/bash

awk '{print $0 " " $2+$3}' spese.txt |\
	awk '{sum2+=$2; sum3+=$3; sum4+=$4; print $0}\
		END\
	     {print "totale    " sum2 " " sum3 " " sum4}' > spese2.txt
			#ho creato tre variabili e le ho riempite, per poi stamparle dopo l'end
