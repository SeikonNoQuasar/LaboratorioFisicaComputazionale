#!/bin/bash

for((i=1;i<11;++i))
do
	file=input$i
	echo $file
	echo $i > $file		
	echo $RANDOM >> $file
done
