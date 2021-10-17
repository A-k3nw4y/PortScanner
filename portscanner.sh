#!/bin/bash
host=$1
firstPort=$2
lastPort=$3
#scanning function
function scan {
for ((counter=$firstPort;counter<=$lastPort;counter++))
do
(echo >/dev/tcp/$host/$counter) > /dev/null 2>&1 && echo "$counter open"
done
}

#triggering the function
scan

#running command ./portscanner.sh Host(IP) firstPort lastPort >> ex ./portscanner,sh 127.0.0.1 1 1000