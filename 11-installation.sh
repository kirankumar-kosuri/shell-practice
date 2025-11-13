#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: PLEASE RUN THIS SCRIPT UNDER ROOT ACCESS"
    exit 1
fi

    dnf install ansible -y

if [ $? -ne 0 ]; then
    echo "Installing Ansible is FAILURE"
    exit 1
else
    echo "Installing Ansible is SUCCESS"
fi

    dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing  Nginx is FAILURE"
    exit 1
else
    echo "Installing Nginx is SUCCESS"
fi

    dnf install mysqld -y

if [ $? -ne 0 ]; then
    echo "Installing Mysqld is FAILURE"
    exit 1
else
    echo "Installing Mysqld is SUCCESS"
fi
