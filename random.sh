#!/bin/bash

  #sum=`echo $((250+$RANDOM%250))`
#echo "$sum"
declare -a arraysum
	
		for ((x=1; x<=30 ; x++))
			do
  				sum=`echo $((250+$RANDOM%250))`
				echo "$sum"
			done
exit 0
