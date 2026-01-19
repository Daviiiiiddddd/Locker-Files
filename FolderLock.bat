@echo off
title Secure Folder Manager - Light Version
cls
color 0A

:MAIN
cls
echo =======================================
echo        Secure Folder Manager
echo =======================================
echo.

if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if EXIST Private goto OPTIONS_LOCKED
if NOT EXIST Private goto CREATE_NEW

:OPTIONS_LOCKED
echo [1] Lock Folder (Hide)
echo [2] Exit
set /p opt="Select option: "
if "%opt%"=="1" goto LOCK
goto MAIN

:LOCK
:: تغيير الاسم أولاً
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
:: إخفاء كملف نظام (هذا ما يجعله يختفي)
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

:: تحديث المجلدات بدون قفل الشاشة
ie4uinit.exe -show
echo ✓ Done!
timeout /t 2 >nul
goto MAIN

:UNLOCK
echo.
set /p "pass=Enter password: "
if NOT "%pass%"=="mlakot" goto FAIL

attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
ie4uinit.exe -show
echo ✓ Unlocked!
timeout /t 2 >nul
goto MAIN

:FAIL
echo ✗ Wrong password!
pause
goto MAIN

:CREATE_NEW
md Private
echo ✓ Created 'Private' folder.
pause
goto MAIN

:END
exit
