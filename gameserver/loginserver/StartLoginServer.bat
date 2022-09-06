@echo off
@color 0b
:start
title LII MultVerso [LOGIN SERVER]
echo Starting Epilogue [LOGIN SERVER].
echo.

SET java_opts=%java_opts% -Xms32m
SET java_opts=%java_opts% -Xmx64m


SET java_settings=%java_settings% -Dfile.encoding=UTF-8
SET java_settings=%java_settings% -Djava.net.preferIPv4Stack=true

java -server %java_settings% %java_opts% -cp config;./../lib/* l2mv.loginserver.LoginServer
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
