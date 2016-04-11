#!/bin/bash
user=$1
until who |grep "$user"> /dev/null
do 
	echo "User not logged in"
	sleep 10
done
echo "Finally!! $user has entered the OS"
exit 0