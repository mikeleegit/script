#!/bin/bash


echo "======================"
echo "select your gender"
echo "1.male"
echo "2.female"
echo "======================"
read  gender

[ -z  $gender  ]
if [ $gender -gt 0 2> /dev/null ] 
then
	echo ""
else
 	echo "please try again" && exit 1
fi


#echo "gender=$gender"



#read -p "Enter your gender  (male/female):  " gender

#if [ "$gender" == male ]
#then
#	echo "your gender is $gender" 
#else
#	echo "your gender is $gender"
#fi

#clear
#echo "======================"
#echo "select your Specification"
#echo "1.JP"
#echo "2.US"
#echo "3.UK"
#echo "4.TW"
#echo "5.KR"
#echo "6.CN"
#echo "======================"
#read -s specification

clear
echo "male choice range is 23~30"
echo "female choice range is 22~30"
read -p  "Enter the size of your choice(cm):  " choice

echo "gender=$gender"
#echo "specification=$specification"
echo "choice=$choice"


[ -z  $choice  ]
choicecheck=$(echo $choice |bc 2> /dev/null)
if [ $choicecheck != $choice ]
then
	echo "please try again" && exit 1
else
	echo ""
fi



if [ $choice  -gt 0 2> /dev/null ]  || [ `echo "scale=1;$choice / 1"    |bc` ] 
then
	echo ""
else
 	echo "please try again" && exit 1
fi

#[ -z $2 ] && echo "please enter again " && exit 1

#echo "gender=$gender"
#echo "specification=$specification"
#echo "choice=$choice"

shoe_pwd=`pwd`
 
#echo " testg:$gender  testc:$choice "

	$shoe_pwd/hw_shoe_size.sh ${gender:-default}  ${choice:-default} 
