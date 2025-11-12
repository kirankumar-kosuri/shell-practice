#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: PLEASE RUN THIS SCRIPT WITH ROOT PRIVELAGE"
    exit 1
fi

validate(){
    if [ $? -ne 0 ]; then
        echo "ERROR:: Installing $2 is Failure"
        exit 1
    else    
        echo "Installing $2 is Success" 
fi
}

dnf install ansible -y
validate $? "Ansible"


dnf install nginx -y
validate $? "Nginx"

dnf install python3 -y
validate $? "Python3"
