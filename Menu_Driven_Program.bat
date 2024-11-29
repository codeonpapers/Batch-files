@echo off
:: Title and introduction
title Useful Automated Tasks
echo ============================================
echo Welcome to the Automated Task Manager
echo ============================================
echo.

:: Main menu
:menu
echo Choose an option:
echo 1. Clean Temporary Files
echo 2. Backup Important Files
echo 3. Display System Information
echo 4. Kill a Process
echo 5. Exit
set /p choice=Enter your choice (1-5): 

:: Choices
if "%choice%"=="1" goto clean_temp
if "%choice%"=="2" goto backup_files
if "%choice%"=="3" goto sys_info
if "%choice%"=="4" goto kill_process
if "%choice%"=="5" goto exit
echo Invalid choice, try again!
goto menu

:: Clean temporary files
:clean_temp
echo Cleaning temporary files...
del /q /s %temp%\*.* >nul 2>&1
rd /s /q %temp% >nul 2>&1
echo Temporary files cleaned successfully!
pause
goto menu

:: Backup files
:backup_files
echo Backing up files...
set /p source=Enter the source folder path: 
set /p destination=Enter the destination folder path: 
xcopy "%source%" "%destination%" /e /h /c /i
echo Backup completed successfully!
pause
goto menu

:: Display system information
:sys_info
echo Displaying system information...
systeminfo | more
pause
goto menu

:: Kill a process
:kill_process
echo Killing a process...
set /p process=Enter the name of the process to kill (e.g., notepad.exe): 
taskkill /im "%process%" /f
echo Process %process% killed successfully!
pause
goto menu

:: Exit script
:exit
echo Thank you for using the Automated Task Manager!
pause
exit
