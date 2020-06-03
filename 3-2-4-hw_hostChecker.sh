#!/bin/bash
#Description:  ping user input ip
#Write  by  350  (weilin.jang@gmail.com)
#Version : v1.00

echo  "====  LAN  HOST  CHECKER  ===="

read -p "Enter you want check ip range: " ip_network_segment
read -p "Enter you want check ip start: " ip_start
read -p "Enter you want check ip stop: " ip_stop

echo "ip_network_segment: $ip_network_segment"
echo "ip_start: $ip_start"
echo "ip_stop: $ip_stop"

ip_ns=$ip_network_segment


#ip_range=$ip_ns
echo "ip_range: "$ip_range""

for  ((ip=$ip_start; ip<=$ip_stop; ip++))
do
        echo  -n  "pinging  $ip...  "
        ping  -c  1  -i  0.2  -W 1   $ip_ns.$ip  &>  /dev/null
        if  [  $?  -eq  0  ]
        then
                echo  "ONLINE."
        else
                echo ""
        fi
done

echo  "========  SCAN  END  ========"

exit  0

