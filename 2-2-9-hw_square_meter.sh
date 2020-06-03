#!/bin/bash 


a1=""

while [ "$a1" !=  0 ]
do
clear
read -p "Enter you want  unit conversion (square_meter <--> ping): "  unit
	[ "$unit" == "square_meter" -o  "$unit" == "ping"  ] #&& echo $?
	if [ "$?" == 0 ]
	then
		echo "Your select is $unit"
		break	
	else
		echo "please enter  square_meter or ping " 
	fi
		read -n 1 -p  "enter any key continue.."
done	

while [ "$a1" !=  0 ]
do
clear
read -p "Enter you   unit conversion  value: " value
	[ "$value" -gt 0 2> /dev/null  ]  #&& echo $?
	if [ "$?" == 0 ]
	then
		echo "You input  value is $value"
		break	
	else
		echo "please enter  value " 
	fi
		read -n 1 -p  "enter any key continue.."
done	

#echo "$unit"
#echo "$value"
clear
filepath=`pwd`
$filepath/2-2-9-hw_square_meter_area-calculation.sh	 ${unit:-default} ${value:-default}
