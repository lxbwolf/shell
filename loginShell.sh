#!/bin/bash

echo -n "login:"
read name
echo -n "password:"
read password
if [ $name = "liuxb" -a $password = "liuxb" ]
then
	echo "The host and password is right!"
else
	echo "You have inputed wrong characters!"
fi
