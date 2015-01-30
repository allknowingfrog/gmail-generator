#!/bin/bash
if [ -z "$1" ]; then
    echo usage: $0 email count
    exit
fi
EMAIL=$1
TOTAL=${2:-10}
COUNTER=0
while [ $COUNTER -lt $TOTAL ]; do
    echo ${EMAIL/@/+$COUNTER@}
    let COUNTER=COUNTER+1
done
