#!/bin/bash

IP=`ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}'`
NET=`ipcalc -n $IP | cut -f2 -d '='`
MASK=`ipcalc -p $IP | cut -f2 -d '='`

echo "网段：$NET"
echo "网段后缀：$MASK"