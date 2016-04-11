#!/bin/bash
if [ "$#" -lt 1 ]	# nota come # viene usato come "argomento" di $ per dire "il numero di elementi della stringa con cui ho avviato l'eseguibile" 
then 
	echo "Usage: $0 <parameter>"
	echo "where parameter is: italian|thai|smart|steakhouse"
	exit 1		# exit status uno per dire che non ho raggiunto la fine del programma, sara` zero se l programma e' andato a buon fine
fi			# che sia una specie di endif ?

DATE=$(date +"%d %b %Y %H:%M")
TYPE=$1
echo "Queried on $DATE"
grep $TYPE restaurants.txt |sort -t, +3n


case $1 in 
	[Tt][Hh][Aa][Ii]) ...	#primo posto in cui cerco le informazioni, cosi scrivendo segnalo che le lettere della parola thai possono essere scritte 
				#maiuscole o minuscole dall'utente, e le trovo comunque
		 ...
		 ;;
	Steakhouse) 		#deve essere scritto in questo modo con la priam maiuscola e la seconda minuscola, e mi dice "se trovo questa parola allora
				#fai questo
	       echo "How would you like your steak?"
		 ;;
	*) echo "Sorry this pattern does not match any restaurant"
	   ...
	   ;;
esac


exit 0



