@echo off
chcp 65001>nul





call :logo
echo.^(^i^) SPPSvc Activator is running...
timeout /nobreak /t 1 >nul





echo.^(^i^) Launching service...
for /l %%i in (4,-1,1) do sc start sppsvc
timeout /nobreak /t 1 >nul



echo.^(^!^) Configuring reboots...
for /l %%i in (4,-1,1) do reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SPPSvcActivatorRebooter /f
timeout /nobreak /t 1 >nul





call :logo
echo.^(^i^) The work is completed^!
timeout /nobreak /t 1 >nul

echo.^(^!^) Reboot #2^!
shutdown /r /t 5
timeout /t 4 >nul
exit







:logo
title [MikronT] SPPSvc Activator Rebooter
color 0b
cls
echo.
echo.
echo.    [MikronT] ==^> SPPSvc Activator Rebooter
echo.   ==========================================
echo.     See other here:
echo.         github.com/MikronT
echo.
echo.                  Will no longer be updated^!
echo.                  Merged with Ten Tweaker
echo.
echo.
echo.
exit /b