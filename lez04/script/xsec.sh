#!/bin/bash
grep ection afb/numbers*/statistics.txt | grep wei | cut -f 2 -d= > xsec.txt

OUTFILE=xsec_summary
echo " " > ${OUTFILE}.txt
for i in $(ls afb/numbers*/statistics.txt);
do
  NAME=$i
  NAME=${NAME#afb/}
  NAME=${NAME%/statistics.txt}
  echo $NAME
  XSEC=$(grep ection $i | grep wei | cut -f 2 -d=)
  echo "$NAME $XSEC" >> ${OUTFILE}.txt
done
sed "s/numbers/xsec/g" ${OUTFILE}.txt > ${OUTFILE}2.txt

exit 0