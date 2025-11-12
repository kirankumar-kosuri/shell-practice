#!/bin/bash

echo "Please enter the Number"
read Number

if [ $(($NUMBER % 2)) -eq 0 ]; then
    echo "Given Number is $NUMBER is ODD"
else
    echo "Given Number is $NUMBER is EVEN"
fi

