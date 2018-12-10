@echo off
chcp 65001

for /f "tokens=1,* delims=:" %%i in ("%~dp0") do %%i:
cd "%~dp0"



call :logo
echo.^(^?^) Ви впевнені^? ^(Enter або закрийте вікно^)
pause>nul

call :logo
echo.^(^!^) Запуск [ADSI] SPPSvc Activator...
>nul timeout /nobreak /t 1





echo.^(^!^) Оновлення параметрів Реєстра Windows...
reg import registry.reg
reg import registry.reg
reg import registry.reg
reg import registry.reg



echo.^(^!^) Настройка перезагрузок...
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SPPSvcActivatorRebooter /t REG_SZ /d "%~dp0SPPSvcActivatorRebooter.cmd" /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SPPSvcActivatorRebooter /t REG_SZ /d "%~dp0SPPSvcActivatorRebooter.cmd" /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SPPSvcActivatorRebooter /t REG_SZ /d "%~dp0SPPSvcActivatorRebooter.cmd" /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SPPSvcActivatorRebooter /t REG_SZ /d "%~dp0SPPSvcActivatorRebooter.cmd" /f





call :logo
echo.^(^!^) Роботу завершено^!
>nul timeout /nobreak /t 1

echo.^(^!^) Буде виконано 2 перезагрузки^!
>nul timeout /nobreak /t 1

echo.^(^!^) Перезагрузка I через 30 секунд^!
shutdown /r /t 30
>nul timeout /t 30
exit





:logo
title [ADSI] SPPSvc Activator
color 0b
cls
echo.
echo.    [ADSI] ==^> SPPSvc Activator
echo.
exit /b
