#!/bin/sh
#If there is some file in directory /ddd/subddd, then  change size of the file to 3G.
while line=`ls /ddd/subddd`
do
	if test $line=""
	then echo "NULL"
		sleep 1
	else echo $line
		chfs -a size=3G /ddd/subddd
		exit 0
	fi
done
