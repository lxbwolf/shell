#export num=1 ; 
#while true ;
#do ((num++)) ; 
#HOME=/;billingserver -b /opt/app/record/ -l 0 -f -s start ;
#sleep 5 ;
#done

#!/bin/bash

function check()
{
    RESULT="ps -ef | grep billingservser | grep -v grep | grep -v ini"
    return ${RESULT}
}

while [ -z check ]
do
        /home/dingyouzhen/workspace/searchone/build/billingservser -l 0 -f -s start
        sleep 3
done
