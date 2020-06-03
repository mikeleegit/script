#!/bin/bash

mypasswd=""

read -p  "enter your passwd: " mypasswd
read -sp "confirm passwd: " mypasswd1



echo ""

	if [ "$mypasswd" == "$mypasswd1" ]
	then
		echo "passwd setting ok"
	else
		echo "please retry "
	fi

exit 0



