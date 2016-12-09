#!/bin/bash

a=1
while :
do
	a=$(($a+1))
	if test $a -gt 255
	then
		break
	else
		echo $(ping -c l 192.168.1.$a | grep "ttl" awk '{ print $4 }' | sed 's/://g')
		ip=$(ping -c l 192.169.1.$a | grep "ttl" | awk '{ print $4 }' | sed 's/://g')
		echo $ip >> $HOME/Desktop/ip.txt
	fi
done
