@echo off
title Secure Folder Manager - By Mlakot
cls
color 0A

:MAIN
echo ================================
echo    Secure Folder Manager
echo      Created by MLakot
echo ================================
echo.
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Private goto OPTIONS

echo [1] Lock Folder
echo [2] Create New Private Folder
echo [3] Exit
echo.
choice /c 123 /n /m "Select option: "

if errorlevel 3 goto END
if errorlevel 2 goto CREATE
if errorlevel 1 goto LOCK

:LOCK
cls
echo Locking Private Folder...
timeout /t 2 /nobreak >nul
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo ✓ Folder locked successfully!
timeout /t 2 /nobreak >nul
goto MAIN

:UNLOCK
cls
echo ================================
echo      UNLOCK SECURE FOLDER
echo ================================
echo.
set /p "pass=Enter password: "
if "%pass%"=="YOUR_PASSWORD_HERE" goto SUCCESS_UNLOCK

echo ✗ Invalid password!
timeout /t 2 /nobreak >nul
goto MAIN

:SUCCESS_UNLOCK
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo ✓ Folder unlocked successfully!
timeout /t 2 /nobreak >nul
goto MAIN

:CREATE
cls
if EXIST Private (
    echo ! Private folder already exists!
    timeout /t 2 /nobreak >nul
    goto MAIN
)
md Private
echo ✓ Private folder created successfully!
timeout /t 2 /nobreak >nul
goto MAIN

:OPTIONS
echo.
echo [1] Create Private Folder
echo [2] Back to Main
choice /c 12 /n /m "Select option: "
if errorlevel 2 goto MAIN
if errorlevel 1 goto CREATE

:END
cls
echo Thank you for using Secure Folder Manager!
echo Created by Mlakot
timeout /t 2 /nobreak >nul
exit
