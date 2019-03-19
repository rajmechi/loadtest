#!/bin/bash
#while true; do sleep 15 ; echo "background"; done &

#while true; do sleep 12 ; echo "foreground"; done

 oneShot() {
    curl -s -k xxxx | grep LAB
 }

while true
do

 parallel -j50 oneShot 
 echo "**"
 sleep 1 

done

