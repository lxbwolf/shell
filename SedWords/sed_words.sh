#!/bin/sh

while read line
do
	FS=`echo $line | awk -F, '{ print $1 }'`
	SS=`echo $line | awk -F, '{ print $2 }'`
	sed -i "s/$FS/$SS/g" `grep -rl "$FS" ./* --exclude "checklist"`
	#--exclude-from filelist
done < checklist
echo "FS:$FS"
echo "SS:$SS"
