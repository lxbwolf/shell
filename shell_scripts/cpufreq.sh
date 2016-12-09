#!/bin/bash
cpunum=$(cat /proc/cpuinfo |grep processor |wc -l)
echo "cpunum=$cpunum"
i=0
while [ $i -lt $cpunum ]
	do
		cpufreqfile="/sys/devices/system/cpu/cpu$i/cpufreq/scaling_governor"
			echo "performance > $cpufreqfile"
				echo performance > $cpufreqfile
				 
				   ((i=$i+1))
				   done
