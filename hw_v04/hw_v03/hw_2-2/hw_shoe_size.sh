#!/bin/bash
#shoe size table

#$1=gendef(male=1,female=2)
#$2=size

kr=10

function shoe_size_male()
{
	#echo "function $1 $2 "
	case  $1 in 
		23|23.5)
			echo "1.JP is $1"
			echo "2.US is 4.5~5"
			echo "3.UK is 3.5~4"
			echo "4.TW is 72~73"
			KR=$(echo "$1*$kr"|bc)
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		24|24.5)
			echo "1.JP is $1"
			echo "2.US is 5.5~6"
			echo "3.UK is 5~5.5"
			echo "4.TW is 73~75"
			KR=$(echo "$1*$kr"|bc)
			let KR=$1*$kr
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		25|25.5)
			echo "1.JP is $1"
			echo "2.US is 6.5~7"
			echo "3.UK is 6~6.5"
			echo "4.TW is 75~76"
			KR=$(echo "$1*$kr"|bc)
			let KR=$1*$kr
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		26|26.5)
			echo "1.JP is $1"
			echo "2.US is 7.5~8"
			echo "3.UK is 7~7.5"
			echo "4.TW is 77~78"
			KR=$(echo "$1*$kr"|bc)
			let KR=$1*$kr
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		27|27.5)
			echo "1.JP is $1"
			echo "2.US is 8.5~9"
			echo "3.UK is 8~8.5"
			echo "4.TW is 79~80"
			KR=$(echo "$1*$kr"|bc)
			let KR=$1*$kr
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		28|28.5)
			echo "1.JP is $1"
			echo "2.US is 9.5~10"
			echo "3.UK is 9~9.5"
			echo "4.TW is 81~82"
			KR=$(echo "$1*$kr"|bc)
			let KR=$1*$kr
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		29|29.5)
			echo "1.JP is $1"
			echo "2.US is 10.5~11"
			echo "3.UK is 10~10.5"
			echo "4.TW is 83~84"
			KR=$(echo "$1*$kr"|bc)
			let KR=$1*$kr
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		30)
			echo "1.JP is $1"
			echo "2.US is 14.5"
			echo "3.UK is 14"
			echo "4.TW is 88"
			KR=$(echo "$1*$kr"|bc)
			let KR=$1*$kr
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		* )
			echo "confirm your choice"
			;;
	esac
}

function shoe_size_female()
{
	#echo "function $1 $2 "
	case  $1 in 
		21|21.5)
			echo "1.JP is $1"
			echo "2.US is 4~4.5"
			echo "3.UK is 2.5~3"
			echo "4.TW is 64~65"
			KR=$(echo "$1*$kr"|bc)
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		22|22.5)
			echo "1.JP is $1"
			echo "2.US is 5~5.5"
			echo "3.UK is 3.5~4"
			echo "4.TW is 66~67"
			KR=$(echo "$1*$kr"|bc)
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		23|23.5)
			echo "1.JP is $1"
			echo "2.US is 6~6.5"
			echo "3.UK is 4.5~5"
			echo "4.TW is 68~69"
			KR=$(echo "$1*$kr"|bc)
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		24|24.5)
			echo "1.JP is $1"
			echo "2.US is 7~7.5"
			echo "3.UK is 5.5~6"
			echo "4.TW is 70~71"
			KR=$(echo "$1*$kr"|bc)
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		25|25.5)
			echo "1.JP is $1"
			echo "2.US is 8~8.5"
			echo "3.UK is 6.5~7"
			echo "4.TW is 72~73"
			KR=$(echo "$1*$kr"|bc)
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		26)
			echo "1.JP is $1"
			echo "2.US is 9"
			echo "3.UK is 7.5"
			echo "4.TW is 74"
			KR=$(echo "$1*$kr"|bc)
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		27)
			echo "1.JP is $1"
			echo "2.US is 9.5"
			echo "3.UK is 8"
			echo "4.TW is 75"
			KR=$(echo "$1*$kr"|bc)
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		28)
			echo "1.JP is $1"
			echo "2.US is 10"
			echo "3.UK is 9.5"
			echo "4.TW is 76"
			KR=$(echo "$1*$kr"|bc)
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		29)
			echo "1.JP is $1"
			echo "2.US is 10.5"
			echo "3.UK is 10.5"
			echo "4.TW is 77"
			KR=$(echo "$1*$kr"|bc)
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		30)
			echo "1.JP is $1"
			echo "2.US is 11"
			echo "3.UK is 11.5"
			echo "4.TW is 78"
			KR=$(echo "$1*$kr"|bc)
			echo "5.KR is $KR" 
			echo "6.CN is $1"
			;;
		* )
			echo "confirm your choice"
			;;
	esac
}



if [ $1 -eq 1 ]
then
	echo "Your gendef is male"
	echo "shoe_size_table is: " && shoe_size_male $2 && echo ""
else
	echo "Your gendef is female"
	echo "shoe_size_table is: " && shoe_size_female $2 && echo ""
fi



