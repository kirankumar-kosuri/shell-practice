#!/bin/bash

USERID=$(id -u)

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
NORMAL="\e[0m"


if [ $USERID -ne 0 ]; then
    echo "ERROR:: PLEASE RUN THIS SCRIPT UNDER ROOT ACCESS"
    exit 1
fi

validate(){
    if [ $1 -ne 0 ]; then
    echo "Installing $2 ... $RED FAILURE $NORMAL"
    exit 1
else
    echo "Installing $2 ... $GREEN SUCCESS $NORMAL"
fi
}

    dnf list installed ansible
    if [ $? -ne 0 ]; then
    dnf install ansible -y
    validate $? "Ansible"
    else
        echo "Ansible is Already Installed ... $YELLOW SKIPPING $NORMAL"
    fi

    dnf list installed nginx
    if [ $? -ne 0 ]; then
    dnf install nginx -y
    validate $? "Nginx"
    else 
        echo "Nginx is Already Installed ... $YELLOW SKIPPING $NORMAL"
    fi
    dnf list installed mysql
    if [ $? -ne 0 ]; then
    dnf install mysql -y
    validate $? "Mysql"
    else
        echo "Mysql is Already Installed ... $YELLOW SKIPPING $NORMAL"
    fi

