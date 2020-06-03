#!/bin/bash

for (( x=1 ; x<=9 ; x++))
do
	for (( y=1 ; y<=9 ;y++ ))
	do
		#echo "summary= $summary "
		echo -n -e  "sum= $y * $x = "$(($y * $x))"\t"
		let varnewline=$y%9==0 && echo ""
	done
done
exit 0 
