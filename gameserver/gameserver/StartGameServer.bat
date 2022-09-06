@echo off
@color 0b
title LII MultVerso [GAME SERVER]
echo Starting Epilogue [GAME SERVER].
:start
echo Starting LII MultVerso GameServer.
echo.
REM одинаковый размер памяти для Xms и Xmx, JVM пытается удержать размер heap'а минимальным, и если его нужно меньше, чем в Xmx - гоняет GC понапрасну
SET java_opts=%java_opts% -Xms3g
SET java_opts=%java_opts% -Xmx3g

SET java_settings=%java_settings% -Dfile.encoding=UTF-8
SET java_settings=%java_settings% -Djava.net.preferIPv4Stack=true

REM Logging
REM SET java_opts=%java_opts% -XX:+PrintGCDetails
REM SET java_opts=%java_opts% -XX:+PrintGCDateStamps
REM SET java_opts=%java_opts% -XX:+PrintGCApplicationStoppedTime
REM SET java_opts=%java_opts% -XX:+PrintGCTimeStamps
REM SET java_opts=%java_opts% -XX:+PrintGC
REM SET java_opts=%java_opts% -Xloggc:./log/garbage_collector.log

java -server %java_settings% %java_opts% -cp config;./../lib/* l2mv.gameserver.GameServer

REM Debug ...
REM java -Dfile.encoding=UTF-8 -cp config;./* -Xmx1G -Xnoclassgc -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=7456 l2mv.gameserver.GameServer

if ERRORLEVEL 2 goto restart
if ERRORLEVEL 1 goto error
goto end
:restart
echo.
echo Server restarted ...
echo.
goto start
:error
echo.
echo Server terminated abnormaly ...
echo.
:end
echo.
echo Server terminated ...
echo.

pause
