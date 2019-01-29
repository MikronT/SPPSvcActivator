@echo off
chcp 65001>nul

net session>nul 2>nul
if %errorLevel% GEQ 1 goto :startAsAdmin

%~d0
cd "%~dp0"





call :logo
echo.^(^i^) SPPSvc Activator is running...
timeout /nobreak /t 1 >nul

echo.^(^?^) Are you sure^? ^(Enter or close^)
pause>nul





call :logo
echo.^(^i^) Updating the Windows Registry settings...
for /l %%i in (4,-1,1) do reg import registry.reg
timeout /nobreak /t 1 >nul



echo.^(^i^) Launching service...
for /l %%i in (4,-1,1) do sc start sppsvc
timeout /nobreak /t 1 >nul



echo.^(^i^) Configuring reboots...
for /l %%i in (4,-1,1) do reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SPPSvcActivatorRebooter /t REG_SZ /d """%~dp0sppsvcActivatorRebooter.cmd""" /f
timeout /nobreak /t 1 >nul





call :logo
echo.^(^i^) The work is completed^!
echo.
timeout /nobreak /t 1 >nul

echo.^(^?^) Reload now^? ^(Enter or close^)
echo.^(^i^) Will be runned two reboots^!
pause>nul

echo.^(^!^) Reboot #1^!
shutdown /r /t 5
timeout /nobreak /t 4 >nul
exit







:logo
title [MikronT] SPPSvc Activator
color 0b
cls
echo.
echo.
echo.    [MikronT] ==^> SPPSvc Activator
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





:startAsAdmin
echo.^(^!^) Please, run as Admin^!
timeout /t 3 >nul
exit