#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: PLEASE RUN THIS SCRIPT WITH ROOT PRIVELAGE"
    exit 1
fi
##############################################################################################################
dnf install ansible -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Installing Ansible is Failure"
    exit 1
else    
    echo "Installing Ansible is Success" 
fi
##############################################################################################################
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Installing Nginx is Failure"
    exit 1
else    
    echo "Installing Nginx is Success" 
fi
##############################################################################################################
dnf install python3 -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Installing Python3 is Failure"
    exit 1
else    
    echo "Installing Python3 is Success" 
fi
##############################################################################################################