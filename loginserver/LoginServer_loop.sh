#!/bin/bash

# ======== JVM settings =======
javaopts=" -Xms32m"
javaopts="$javaopts -Xmx64m"

# не изменять
java_settings=" -Dfile.encoding=UTF-8"
java_settings="$java_settings -Djava.net.preferIPv4Stack=true"

while :;
do
	java -server $java_settings $javaopts -cp config:../lib/* l2mv.loginserver.LoginServer > log/stdout.log 2>&1

	[ $? -ne 2 ] && break
	sleep 10;
done
