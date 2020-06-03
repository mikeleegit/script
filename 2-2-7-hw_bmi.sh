#!/bin/bash
a1=""


while  [ "$a1"  !=  0 ]
do
read -p "enter your height(cm): " myheight

[ -z $myheight ] 
#echo "$?"
[  $myheight -gt 0 2> /dev/null ] 

	if [ "$?" == 0 ]
	then
		#echo "myheight1=$?"
		myheight1=$myheight 
		echo "your height is $myheight1 cm" 
		break
	else
		#echo "a1=$?" 
		echo  "please enter height again" 
		#exit 1 
	fi
done

#echo "myheight1: $myheight1"

while  [ "$a1"  !=  0 ]
do
read -p "enter your body weight(kg): " myweight

[ -z $myweight ] 
[ $myweight -gt 0 2> /dev/null ] 

	if [ "$?" == 0 ]
	then
		#echo "myweight1=$?" 
		myweight1=$myweight 
		echo "your height is $myweight1 kg" 
		break
	else 
		echo "please enter weight again  " 
	fi
done
#echo "myweight1: $myweight1"
 
echo ""

hw_script=`pwd`
#echo "$hw_script"

#/home/user/script/hw_2-2/hw_bmi_compute.sh ${myheight1:-default} ${myweight1:-default}
$hw_script/2-2-7-hw_bmi_compute.sh    ${myheight1:-default} ${myweight1:-default}
