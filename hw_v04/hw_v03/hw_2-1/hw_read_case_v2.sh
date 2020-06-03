#!/bin/bash

mydrink=0

while [ $mydrink -ne "4" ]
do
clear
echo "==================================="
echo "select your drink:"
echo "1.coke"
echo "2.beer"
echo "3.tea"
echo "4.exit"
echo "==================================="


read  -p "your sleect is: " mydrink

	case $mydrink in
		1)
			echo "coke is NT:30"
			;;

		2)
			echo "beer is NT:39"
			;;

		3)
			echo "tea is NT:50"
			;;
		4)
			echo "$mydrink.exit"
			;;
		*)
			echo "try again"
			mydrink=0
			;;
	esac
		read -n 1 -p "press any key to continue..."
done

exit 0
