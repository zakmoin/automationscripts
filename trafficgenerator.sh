#!/bin/sh

# Replace the interface id if its not the same

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

LOC="$(which ScapyTrafficGenerator)"

VAR1="$(pip list --format=columns | grep "^ScapyTrafficGenerator*" | cut -d ' ' -f 1)"
for i in `seq 1 20`; 
do 
	if [ "$VAR1" = "ScapyTrafficGenerator" ]; then

		$LOC -X http -r '-X 1 -E 3 -F /tmp/testpackets -i enp0s8 -s 63.54.53.23 -S 10000 -D 80 -m 12:31:25:15:a1:55 -M 12:31:25:15:a1:2b' 1>/dev/null
		$LOC -X http -r '-X 1 -F /tmp/testpackets -i enp0s8 -s 64.33.23.21 -S 10001 -D 443 -m 12:31:25:15:a1:56 -M 12:31:25:15:a1:2b' 1>/dev/null
		$LOC -X http -r '-X 1 -F /tmp/testpackets -i enp0s8 -s 122.168.0.3 -S 10002 -D 8443 -m 12:31:25:15:a1:57 -M 12:31:25:15:a1:2b' 1>/dev/null
		$LOC -X http -r '-X 1 -F /tmp/testpackets -i enp0s8 -s 210.168.0.4 -S 10003 -D 80 -m 12:31:25:15:a1:58 -M 12:31:25:15:a1:2b' 1>/dev/null
		$LOC -X http -r '-i enp0s8 -s 10.21.21.21 -u "/zakisbadurl.com"'
		$LOC -X ftp -r '-i enp0s8 -F /tmp/testpackets -s 63.54.53.23 -u admin:password'
	else
		echo "No Installated"
	fi
done
