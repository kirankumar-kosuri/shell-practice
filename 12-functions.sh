#!/bin/bash

# Ckecking Weather the User have root access or not 

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: PLEASE RUN THIS SCRIPT UNDER ROOT ACCESS"
    exit 1
fi

validate(){
    if [ $1 -ne 0 ]; then
    echo "Installing $2 is FAILURE"
    exit 1
else
    echo "Installing $2 is SUCCESS"
fi
}

    
    dnf install ansible -y
    validate $? "Ansible"

    dnf install nginx -y
    validate $? "Nginx"

    dnf install mysql -y
    validate $? "Mysql"



