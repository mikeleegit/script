#!/bin/bash
#version_3 add while look


#a1:exit code

a1=""

while [ $a1 !=0 ]
do
	clear
	echo "======================"
	echo "select your gender"
	echo "1.male"
	echo "2.female"
	echo "======================"
	read  gender

	[ -z  $gender  ]  
	[ $gender -gt 0 2> /dev/null ] 

	if  [ "$?" ==  0 ] 
	then
		echo ""
		break 
	else
		echo "please try again" 
	fi

done

while [ $a1 !=0 ]
do
	clear
	echo "male size range is 23~30"
	echo "female size range is 22~30"
	read -p  "Enter your shoe size  (cm):  " choice


	[ -z  $choice  ]
	choicecheck=$(echo $choice |bc 2> /dev/null)
	 
	if [ $choicecheck != $choice ]
	then
		echo "please try again" 
	else
		echo ""
		break
	fi


	if [ $choice  -gt 0 2> /dev/null ]  || [ `echo "scale=1;$choice / 1"    |bc` ] 
	then
		echo ""
	else
		echo "please try again" 
	fi
done

shoe_pwd=`pwd`
 
$shoe_pwd/hw_shoe_size.sh ${gender:-default}  ${choice:-default} 
