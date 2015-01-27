#!/bin/bash
if [ -z "$1" ]; then
    echo usage: $0 email count
    exit
fi
EMAIL=$1
if [ -z "$2" ]; then
    TOTAL=10
else
    TOTAL=$2
fi
COUNTER=0
while [ $COUNTER -lt $TOTAL ]; do
    echo ${EMAIL/@/+$COUNTER@}
    let COUNTER=COUNTER+1
done
