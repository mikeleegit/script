#!/bin/bash
#Description:  Fast  change  network  configure.
#Write by  350  (weilin.jang@gmail.com)
#Version:  v1.00

[  $USER  !=  "root"  ]  &&  echo  "You  are  not  root,  exit!"  &&  exit  99

#Netwrok  SETUP  0  (for  default)
setLocal[0]="HOME"
setIP[0]="192.168.8.136"
setNetmask[0]="255.255.255.0"
setGateway[0]="192.168.1.1"

#Netwrok  SETUP  1
setLocal[1]="COMPANY"
setIP[1]="192.168.8.137"
setNetmask[1]="255.255.255.0"
setGateway[1]="192.168.8.254"

#Netwrok  SETUP  2
setLocal[2]="WIFI"
#setSsid[2]="iii"
#setPasswd[2]="034257387"
#setIP[2]="10.120.3.50"
#setNetmask[2]="255.255.0.0"
#setGateway[2]="10.120.0.1"



echo  -e  "===  FAST  CHANGE  NETWORK  ===\n  You  want  change  to:\n"
x=0
while  [  $x  -lt  ${#setLocal[@]} ]
do
        echo  "($x)  ${setLocal[$x]}"
        let  x=$x+1
done
echo  "==========================="
read  -t  10  -p  "Select:"  varSelect

case  ${varSelect:-"0"} in
        0|1|2 )
                ifconfig  ens33  ${setIP[$varSelect]}  netmask  ${setNetmask[$varSelect]}
                route  del  default  &>  /dev/null
                route  add  default  gw  ${setGateway[$varSelect]}
                ;;
		 3)
              #iwconfig wlx503eaa6b0165  essid III
              #iwconfig wlx503eaa6b0165  key 034257387
         	  #dhclient wlx503eaa6b0165
              
			  iwconfig wlan0  essid III
              iwconfig wlan0  key 034257387
         	  dhclient wlan0
          		;;

        * )
                echo  "No  \"$varSelect\",  please  check  again."  ;  exit  99
                ;;
esac
echo  "Successfully  set  ${setLocal[$varSelect]}  network."

exit  0

