#!/bin/bash

#title           :randompacketgenerator
#description     :This script will utilise the ScapyTrafficGenerator to generaterandompackets.
#author		 :Moinuddin Zaki

VAR1="$(pip list --format=columns | grep "^ScapyTrafficGenerator*" | cut -d ' ' -f 1)"
if [ "$VAR1" == "ScapyTrafficGenerator" ]; then
	ScapyTrafficGenerator -X http -r '-X 1 -E 3 -F /home/devbox1/testdata -i enp0s3 -s 192.168.0.1 -S 10000 -d 192.168.0.100 -D 80 -m 12:31:25:15:a1:55 -M 12:31:25:15:a1:2b' 1>/dev/null
	ScapyTrafficGenerator -X http -r '-X 1 -F /home/devbox1/testdata -i enp0s3 -s 192.168.0.1 -S 10000 -d 192.168.0.100 -D 80 -m 12:31:25:15:a1:55 -M 12:31:25:15:a1:2b' 1>/dev/null
else
	echo "ScapyTrafficGenerator No Installated"
fi

