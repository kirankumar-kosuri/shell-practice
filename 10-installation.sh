#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: PLEASE RUN THIS SCRIPT WITH ROOT PRIVELAGE"
fi

dnf install ansible -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Installing Ansible is Failure"
else    
    echo "Installing Ansible is Success" 
fi