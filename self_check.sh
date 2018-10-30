#!/bin/bash

a=`/bin/ping -c 2 {IP ADDRESS}|/bin/grep received|/usr/bin/cut -d " " -f 4`

if [ $a == "1" ] || [ $a == "2" ];
then
   echo "OK" > /dev/null
else
   echo "Rebooted at "`date` >> /{PATH}/self_check/reboot.log
   /sbin/reboot
fi
