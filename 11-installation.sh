#!/bin/bash

USERID=$(id -u)

# Ckecking Weather the User have root access or not

if [ $USERID -ne 0 ]; then
    echo "ERROR:: PLEASE RUN THIS SCRIPT UNDER ROOT ACCESS"
    exit 1
fi

#####################################################################################################################################################

    dnf install ansible -y

if [ $? -ne 0 ]; then
    echo "Installing Ansible is FAILURE"
    exit 1
else
    echo "Installing Ansible is SUCCESS"
fi

#####################################################################################################################################################

    dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing  Nginx is FAILURE"
    exit 1
else
    echo "Installing Nginx is SUCCESS"
fi

#####################################################################################################################################################

    dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing Mysql is FAILURE"
    exit 1
else
    echo "Installing Mysql is SUCCESS"
fi

#####################################################################################################################################################