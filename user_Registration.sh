#!/usr/local/bin/bash

read -p "Enter your first name: " input

firstname="^([A-Z]{1}[a-z]{2,})$"

if [[ $input =~ $firstname ]]
then
	echo "valid"
else
	echo "invalid"
fi
