#!/bin/bash

x=1

while [ "$x" -le 9 ]
do
	for (( y=1 ; y <= 9; y++  ))
		do
			echo -n -e " sum=$y * $x ="$(( $y * $x )) "\t"
			#sleep 1
		done
		let x++
		echo ""
done

exit 0
		
	
