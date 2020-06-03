#!/bin/bash

echo "======================"
echo "select your gender"
echo "1.male"
echo "2.female"
echo "======================"
read -s  gender

#echo "gender=$gender"



#read -p "Enter your gender  (male/female):  " gender

#if [ "$gender" == male ]
#then
#	echo "your gender is $gender" 
#else
#	echo "your gender is $gender"
#fi

clear
echo "======================"
echo "select your Specification"
echo "1.JP"
echo "2.US"
echo "3.UK"
echo "4.TW"
echo "5.KR"
echo "6.CN"
echo "======================"
read -s specification
read -p  "Enter the size of your choice:  " choice

echo "gender=$gender"
echo "specification=$specification"
echo "choice=$choice"

shoe_pwd=`pwd`
$shoe_pwd/hw_shoe_size.sh ${gender:-default} ${specification:-default} ${choice:-default} 
