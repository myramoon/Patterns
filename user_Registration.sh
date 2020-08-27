#!/usr/local/bin/bash -x

read -p "Enter your first and last name " input1
read -p "Enter your email: " input2

name="^[A-Z]{1}[a-z]{2,}[[:space:]]{1}[A-Z]{1}[a-z]{2,}$"

email="^[A-Za-z0-9]+([-\.\+\_]{1}[0-9A-Za-z]+)*@[A-Za-z0-9]+.[a-zA-Z]{2,4}([\.\,]{1}[a-z]{2,3}){1}$"

if [[ $input1 =~ $name && $input2 =~ $email ]]
then
        echo "valid"
else
        echo "invalid"
fi



