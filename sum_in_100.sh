#!/bin/bash

#######################
Two ways
######################

sum=0
for i in {1..50}; do
	sum=$(($sum+2*$i))
done
echo "The sum is $sum"



#Follow is the second way
let sum=0
for i in $(seq 1 100); do
	if [ $[$i%2] == 0 ]; then
		let sum+=$i
	fi
done
echo "The sum is $sum."
