#!/bin/bash



cm=100
echo "Hello this is bmi_compute "
echo "your height is: $1cm, weight is: $2kg"
#height1= cm -> m
height1=`echo "scale=2;$1/$cm"|bc` 
#echo "height1=$height1"

#height2= m * m
height2=`echo "$height1*$height1"|bc`
#echo "height2=$height2"
#bmi=kg/m^2

bmi=`echo "scale=2;$2/$height2"|bc`

echo "your bmi is: $bmi"

