#!/bin/bash 

NUMBER1=100
NUMBER2=500

SUM=$(($NUMBER1+$NUMBER2))
echo "Sum is: ${SUM}"

LEADERS=("Linux" "Shell" "Docker")

echo "All Leader: ${LEADERS[@]}"
echo "First Leader: ${LEADERS[0]}"