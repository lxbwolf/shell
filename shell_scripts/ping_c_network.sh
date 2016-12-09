#!/bin/bash

read -p "C NETWORK: " MY_NET
PING_NET=`echo $MY_NET | sed 's/\([0-9.]*\)\ .[0-9]*/\1/g'`
let i=1
while [ $i -le 254 ]; do
	ping -c1 -W1 $PING_NET.$i &>/dev/null
	[ $? -eq 0 ] && echo "$PING_NET.$i online." || echo "$PING_NET.$i offline"
let i++
done
