#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: PLEASE RUN THIS SCRIPT WITH ROOT PRIVELAGE"
    exit 1
fi

validate(){
    if [ $? -ne 0 ]; then
        echo -e "Installing $2 ... $RED Failure ... $NORMAL"
        exit 1
    else    
        echo -e "Installing $2 ... $YELLOW Success ... $NORMAL" 
    fi
}

dnf list installed ansible 
    if [ $? -ne 0 ]; then
dnf install ansible -y
validate $? "ansible"
    else
    echo -e "Ansible is already Installed ... $YELLOW SKIPPING ... $NORMAL"
    fi

dnf list installed nginx
    if [ $? -ne 0 ]; then
dnf install nginx -y
validate $? "nginx"
    else
        echo -e "Nginx is already Installed ... $YELLOW SKIPPING ... $NORMAL"
    fi
dnf list installed python3
    if [ $? -ne 0 ]; then
dnf install python3 -y
validate $? "Python3"
    else
         echo -e "Python3 is already Installed ... $YELLOW SKIPPING ... $NORMAL"
    fi