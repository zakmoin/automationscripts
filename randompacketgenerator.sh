#!/bin/sh

# Replace the interface id if its not the same

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

LOC="$(which ScapyTrafficGenerator)"

VAR1="$(pip list --format=columns | grep "^ScapyTrafficGenerator*" | cut -d ' ' -f 1)"
if [ "$VAR1" = "ScapyTrafficGenerator" ]; then

	$LOC -X http -r '-X 1 -E 3 -F /tmp/testpackets -i eth1 -s 192.168.0.1 -S 10000 -d 192.168.0.100 -D 80 -m 12:31:25:15:a1:55 -M 12:31:25:15:a1:2b' 1>/dev/null
	$LOC -X http -r '-X 1 -F /tmp/testpackets -i eth1 -s 192.168.0.2 -S 10001 -d 192.168.0.100 -D 80 -m 12:31:25:15:a1:56 -M 12:31:25:15:a1:2b' 1>/dev/null
	$LOC -X http -r '-X 1 -F /tmp/testpackets -i eth1 -s 192.168.0.3 -S 10002 -d 192.168.0.100 -D 80 -m 12:31:25:15:a1:57 -M 12:31:25:15:a1:2b' 1>/dev/null
	$LOC -X http -r '-X 1 -F /tmp/testpackets -i eth1 -s 192.168.0.4 -S 10003 -d 192.168.0.100 -D 80 -m 12:31:25:15:a1:58 -M 12:31:25:15:a1:2b' 1>/dev/null
else
	echo "No Installated"
fi
