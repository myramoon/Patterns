#!/usr/local/bin/bash

read -p "Enter your first and last name " input

name="^[A-Z]{1}[a-z]{2,}[[:space:]]{1}[A-Z]{1}[a-z]{2,}$"

if [[ $input =~ $name ]]
then
        echo "valid"
else
        echo "invalid"
fi



