@echo off
chcp 65001
color 0b
cls



call :logo
echo.^(^!^) Запуск [ADSI] SPPSvc Activator...
>nul timeout /nobreak /t 1





echo.^(^!^) Настройка перезагрузок...
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SPPSvcActivatorRebooter /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SPPSvcActivatorRebooter /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SPPSvcActivatorRebooter /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SPPSvcActivatorRebooter /f





echo.^(^!^) Перезагрузка II через 30 секунд^!
>nul timeout /nobreak /t 30
shutdown /r /t 0
exit





:logo
title [ADSI] SPPSvc Activator
color 0b
cls
echo.
echo.    [ADSI] ==^> SPPSvc Activator
echo.
exit /b