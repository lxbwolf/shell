#!/bin/bash

clear
echo "Enter [y/n]:"
read a
case $a in
	y|Y|Yes|YES)
		echo "You entered $a"
	;;
	n|N|No|NO)
		echo "You entered $a"
	;;
	*)
		echo "Error"
	;;
esac
