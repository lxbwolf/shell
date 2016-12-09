#!/bin/bash

##########################
Input a username, the script will detect whether it exists. If exists, show default shell of the user.
##########################

read -p "Please input a username: " MY_USER_NAME
if cut -d: -f1 /etc/passwd | grep "^$MY_USER_NAME$" &>/dev/null; then
	MY_BASH=`grep "^$MY_USER_NAME:" /etc/passwd | cut -d : -f7`
	echo "${MY_USER_NAME}'s shell is ${MY_BASH}"
else
	echo "$MY_USER_NAME not exists."
	exit 4
fi
