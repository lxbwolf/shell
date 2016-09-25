#!/bin/bash

################################
Monite number of users loged in. If greater than 4, show infos that there are more than 4 users, and exit.
###############################

read -p "A user: " MY_USER
cut -d : -f1 /etc/passwd | grep "^$MY_USER" &>/dev/null || exit 6
let count=`who | grep "^$MY_USER" | wc -l`
until [ $count -ge 4 ]; do
	sleep 5
	let count=`who | grep "^$MY_USER" | wc -l`
done
echo "$MY_USER loged 4 times."
