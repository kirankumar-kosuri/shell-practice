#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: PLEASE RUN THIS SCRIPT WITH ROOT ACCESS"
fi

    dnf install python3 - y

if [ $? -ne 0 ]; then
    echo "Installing Python3 is FAILURE"
else
    echo "Installing Python3 is SUCCESS"
fi