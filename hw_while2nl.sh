#!/bin/bash
#Description: Use the loop (while) to simulate "nl" command.
#Write by 350 (weilin.jang@gmail.com)
#Version: v1.00

read  -p  "Please  enter  File-Name:"  varFileName
#test ! -f $varFileName && echo "try again " && exit 0
[ ! -f $varFileName ] && echo " Check the File-Name you enterd " && exit 0

noLine=1

while  read  txtLine
do
        echo  -e  "\t $noLine  $txtLine"
        let  noLine=$noLine+1
done  <  $varFileName

exit 0

