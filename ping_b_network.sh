#!/bin/bash

read -p "B network: " MY_NET
PING_NET=`echo $MY_NET | sed 's/\([0-9]\{1,3\}.[0-9]\{1,3\}\)\..*/\1/g'`
for p in {0..255}; do
	for i in {1..255}; do
		if ping -c1 -W2 $PING_NET.$p.$i &>/dev/null;then
			echo "$PING_NET.$p.$i is online."
		else
			echo "$PING_NET.$p.$i is offline."
		fi
	done
done
