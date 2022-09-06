#!/bin/bash

# ======== JVM settings =======
# Set heap min/max to same size for consistent results
# одинаковый размер памяти для Xms и Xmx, JVM пытается удержать размер heap'а минимальным, и если его нужно меньше, чем в Xmx - гоняет GC понапрасну
javaopts="$javaopts -Xms3g"
javaopts="$javaopts -Xmx3g"

# Logging
# javaopts="$javaopts -XX:+PrintGCDetails"
# javaopts="$javaopts -XX:+PrintGCDateStamps"
# javaopts="$javaopts -XX:+PrintGCApplicationStoppedTime"
# javaopts="$javaopts -XX:+PrintGCTimeStamps"
# javaopts="$javaopts -XX:+PrintGC"
# javaopts="$javaopts -Xloggc:./log/game/garbage_collector.log"

# не изменять
java_settings=" -Dfile.encoding=UTF-8"
java_settings="$java_settings -Djava.net.preferIPv4Stack=true"

# Java profiler (jvisualVM)
#java_settings="$java_settings -Djava.rmi.server.hostname=IP -Dcom.sun.management.jmxremote.port=PORT -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"

# ==========================================

# exit codes of GameServer:
#  0 normal shutdown
#  2 reboot attempt


while :;
do
	java -server $java_settings $javaopts -cp config:../lib/* l2mv.gameserver.GameServer > log/stdout.log 2>&1

	[ $? -ne 2 ] && break
	sleep 30;
done
