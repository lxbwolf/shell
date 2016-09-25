#!/bin/bash

echo "Please enter three numbers: "
	read -p "The first number is: " n1
	read -p "The second number is: " n2
	read -p "The third number is: " n3
let max_number=$n1
if [ $n2 -ge $n1 ]; then
	max_number=$n2
fi
if [ $n3 -ge $max_number ]; then
	max_number=$3
fi
echo "The max number is $max_number."

