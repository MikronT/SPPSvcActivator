@echo off
chcp 65001>nul

net session>nul 2>nul
if %errorLevel% GEQ 1 goto :startAsAdmin

%~d0
cd "%~dp0"





call :logo
echo.^(^i^) SPPSvc Activator is running...
>nul timeout /nobreak /t 1

echo.^(^?^) Are you sure^? ^(Enter or close^)
pause>nul





call :logo
echo.^(^i^) Updating the Windows Registry settings...
for /l %%i in (4,-1,1) do reg import registry.reg
>nul timeout /nobreak /t 1



echo.^(^i^) Launching service...
for /l %%i in (4,-1,1) do sc start wuauserv
>nul timeout /nobreak /t 1



echo.^(^i^) Configuring reboots...
for /l %%i in (4,-1,1) do reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SPPSvcActivatorRebooter /t REG_SZ /d """%~dp0sppsvcActivatorRebooter.cmd""" /f
>nul timeout /nobreak /t 1





call :logo
echo.^(^i^) The work is completed^!
echo.
>nul timeout /nobreak /t 1

echo.^(^?^) Reload now^? ^(Enter or close^)
echo.^(^i^) Will be runned two reboots^!
pause>nul

echo.^(^!^) Reboot #1^!
shutdown /r /t 5
>nul timeout /t 4
exit







:logo
title [MikronT] SPPSvc Activator
color 0b
cls
echo.
echo.    [MikronT] ==^> SPPSvc Activator
echo.
exit /b





:startAsAdmin
echo.Please, run as Admin!
>nul timeout /nobreak /t 3
exit