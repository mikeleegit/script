#!/bin/bash


function bc_test()
{
	
	echo "hello function  $1 $2 $3"
		#value1=$1
		#value2=$3
		#arithmetic=$2
		
		#echo "value1="$value1""
		#echo "value2="$value2""
	#	echo "arithmetic="$2""
	
	case $2 in
		+)
			echo "$1 + $3 = $(($1 + $3)) "
			;;
		-)
			echo "$1 - $3 = $(($1 - $3)) "
			;;
		x)
			echo "$1 x $3 = $(($1 * $3)) "
			;;
		/)
			sum=`echo  "scale=3;$1/$3"| bc`
      echo "$1 / $3 = $sum" 
			;;
	esac 


}


bc_test  $1 $2 $3


