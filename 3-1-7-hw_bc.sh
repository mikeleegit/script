#!/bin/bash 

echo "===================="
echo "Select what you want"
echo "1.+"
echo "2.-"
echo "3.x"
echo "4./"
echo "===================="

read arithmetic

read -p "Enter the value you want to calculate value1 " value1

read -p "Enter the value you want to calculate value2 " value2

echo "The value you want to calculate: $value1 $arithmetic $value2 "




x="$arithmetic"
#echo "$arithmetic"
case $x in
    1)
        x="+"
		echo "$x"
        ;;
    2)
		x="-"
		echo "$x"
        ;;
    3)
		x="x"
		echo "$x"
        ;;
    4)
		x="/"
		echo "$x"
        ;;
    *)
        echo "case please try again" && exit 0
        ;;
esac   

echo "your selecr : $x"

filename=`pwd`
#$filename/bc_calculate.sh ${value1:-default} ${arithmetic:-default} ${value2:-default}
$filename/3-1-7-hw_bc_calculate.sh ${value1:-default} ${x:-default} ${value2:-default}

exit 0
#read -p "Enter the value you want to calculate value1 " value1

#read -p "Enter the value you want to calculate value2 " value2

#echo "The value you want to calculate: $value1 $arithmetic $value2 "
