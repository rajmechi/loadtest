#!/bin/bash
#while true; do sleep 15 ; echo "background"; done &

#while true; do sleep 12 ; echo "foreground"; done

 oneShot() {
    curl -s -k https://aa-paasport.paaseng.gslb.delta.com | grep LAB
 }

while true
do

 parallel -j10 oneShot 
 echo "**"
 sleep 1 

done

