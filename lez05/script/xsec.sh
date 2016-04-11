#!/bin/bash
grep -i ection afb/numbers*/statistics.txt | grep wei | cut -f 2 -d= > xsec.txt	#la i sta per "insensitive", cut invece serve a dividere il testo come 											fosse in colonne che chiamo  fields. -d= sta per "usa come delimitatore 										l'uguale" -f 2 dice invece quale parte devo prendere, in questo caso la 										seconda. praticamente ho diviso ogni colonna in due parti in 											corrispondenza dell'uguale e ne ho preso la seconda

OUTFILE=xsec_summary
echo " " > ${OUTFILE}.txt
for i in $(ls afb/numbers*/statistics.txt);		# in sta per "su questi elementi"
do
  NAME=$i
  NAME=${NAME#afb/}
  NAME=${NAME%/statistics.txt}
  echo $NAME
  XSEC=$(grep ection $i | grep wei | cut -f 2 -d=)
  echo "$NAME $XSEC" >> ${OUTFILE}.txt
done
sed "s/numbers/xsec/g" ${OUTFILE}.txt > ${OUTFILE}2.txt		#sed [opzioni] "s/old_txt/new_txt/g" [file_da_manipolare] > [file in cui voglio mandarlo] 									con s=search and replace, g=global. praticamente sto cercando in un file una stringa 									old_txt e la sto sostituendo con new_txt
sed -n "4,7p" ${OUTFILE}.txt > ${OUTFILE}2.txt			#questo comando mi da le righe dalla 4 alla 7, il -n mi permette di ignorare le altre. in 									pratica -n = stampa solo quello che ti dico, 4,7 = da a, p = righe
sed -n "/inizio/fine/p" ${OUTFILE}.txt > ${OUTFILE}2.txt	#qui vogliamo stampare tutto il testo contenuto tra la parola inizio e la parola fine

exit 0
