#!/usr/local/bin/bash -x

read -p "Enter your first and last name[Both start with uppercase,separated by space]: " input1
read -p "Enter your email: " input2
read -p "Enter your mobile number [Country code folowed by space and 10digit number]: " input3
read -p "Enter a password [minimum 8 characters and at least 1 uppercase,1 digit] : " input4

shopt -s extglob

name="^[A-Z]{1}[a-z]{2,}[[:space:]]{1}[A-Z]{1}[a-z]{2,}$"
email="^[A-Za-z0-9]+([-\.\+\_]{1}[0-9A-Za-z]+)*@[A-Za-z0-9]+.[a-zA-Z]{2,4}([\.\,]{1}[a-z]{2,3}){1}$"
mobile="^([1-9][0-9]){1}[[:space:]]{1}[1-9]{1}[0-9]{9}$"

#Validation code for password :

if [[ ${#input4} -ge 8 && "$input4" == *[A-Z]* && "$input4" == *[0-9]* && "$input4" == [A-Za-z0-9]* ]]
then
        password=1
else
        password=0
fi


if [[ $input1 =~ $name && $input2 =~ $email && $input3 =~ $mobile && $password -eq 1 ]]
then
        echo "valid"
else
        echo "invalid"
fi




















