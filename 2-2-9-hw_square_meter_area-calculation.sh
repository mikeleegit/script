#!/bin/bash

#echo "hello $1 $2"

case $1 in 
	square_meter)
		square_meter_to_ping=`echo "scale=4;$2 * 0.3025"|bc`
		echo "square_meter convert ping is "$square_meter_to_ping""
		;;
	ping)
		ping_to_square_meter=`echo "scale=4;$2  / 0.3025"|bc`
		echo "ping convert square_meter is "$ping_to_square_meter""	
		;;
esac
