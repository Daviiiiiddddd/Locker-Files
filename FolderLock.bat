@echo off
title Secure Folder Manager - By Mlakot
cls
color 0A

:: التأكد من وجود المجلد المخفي أو المجلد العادي
:MAIN
cls
echo ================================
echo     Secure Folder Manager
echo      Created by MLakot
echo ================================
echo.

if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if EXIST Private goto OPTIONS_LOCKED
if NOT EXIST Private goto CREATE_NEW

:OPTIONS_LOCKED
echo [1] Lock Folder (Private)
echo [2] Exit
echo.
set /p opt="Select option: "
if "%opt%"=="1" goto LOCK
if "%opt%"=="2" goto END
goto MAIN

:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo ✓ Folder locked successfully!
pause
goto MAIN

:UNLOCK
echo ================================
echo       UNLOCK SECURE FOLDER
echo ================================
set /p "pass=Enter password: "
:: ضع باسووردك هنا مكان YOUR_PASSWORD
if NOT "%pass%"=="PASSWORD" goto FAIL

attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo ✓ Folder unlocked successfully!
pause
goto MAIN

:FAIL
echo ✗ Invalid password!
pause
goto MAIN

:CREATE_NEW
echo [1] Create New Private Folder
echo [2] Exit
set /p opt="Select option: "
if "%opt%"=="1" md Private && echo Created! && pause && goto MAIN
if "%opt%"=="2" goto END
goto MAIN

:END
exit
