@echo off
chcp 65001





call :logo
echo.^(^i^) SPPSvc Activator is running...
>nul timeout /nobreak /t 1





echo.^(^i^) Launching service...
for /l %%i in (4,-1,1) do sc start wuauserv
>nul timeout /nobreak /t 1



echo.^(^!^) Configuring reboots...
for /l %%i in (4,-1,1) do reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SPPSvcActivatorRebooter /f
>nul timeout /nobreak /t 1





call :logo
echo.^(^i^) The work is completed^!
>nul timeout /nobreak /t 1

echo.^(^!^) Reboot #2^!
shutdown /r /t 5
>nul timeout /t 4
exit







:logo
title [MikronT] SPPSvc Activator Rebooter
color 0b
cls
echo.
echo.    [MikronT] ==^> SPPSvc Activator Rebooter
echo.
exit /b