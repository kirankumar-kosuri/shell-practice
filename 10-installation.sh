#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: PLEASE RUN THIS SCRIPT WITH ROOT PREVELAGE"
fi

    dnf install nginx -y
if [ $? -ne 0 ]; then
    echo "Installing Nginx is FAILURE"
else
    echo "Installing Nginx is SUCCESS"
fi
