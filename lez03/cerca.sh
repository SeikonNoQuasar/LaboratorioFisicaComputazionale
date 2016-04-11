#!/bin/bash

user=$1

until who | grep "$user" > /dev/null
do
	echo "utente non collegato"
	sleep 5s
done
echo "finalmente collegato"
exit 0
