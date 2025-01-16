::Delete Prefetch all files
@echo off
takeown /f "%SystemRoot%\Prefetch" /r /d y
icacls "%SystemRoot%\Prefetch" /grant administrators:F /t
del /f /q "%SystemRoot%\Prefetch\*.*"
::Delete all files & folder of Temp folder.
del /f /s /q "%TEMP%\*.*"
del /f /s /q "C:\Windows\Temp\*.*"
::Disk cleanup code.
cleanmgr /sagerun:1
::Sort download folder
echo Organizing files in Downloads folder...

:: Set Downloads folder path
set DOWNLOADS=%USERPROFILE%\Downloads

:: Create folders for file types if they don't exist
mkdir "%DOWNLOADS%\Documents"
mkdir "%DOWNLOADS%\Images"
mkdir "%DOWNLOADS%\Videos"
mkdir "%DOWNLOADS%\Music"
mkdir "%DOWNLOADS%\Archives"
mkdir "%DOWNLOADS%\Others"

:: Move PDF files to Documents folder
move "%DOWNLOADS%\*.pdf" "%DOWNLOADS%\Documents\"

:: Move image files to Images folder
move "%DOWNLOADS%\*.jpg" "%DOWNLOADS%\Images\"
move "%DOWNLOADS%\*.jpeg" "%DOWNLOADS%\Images\"
move "%DOWNLOADS%\*.png" "%DOWNLOADS%\Images\"
move "%DOWNLOADS%\*.gif" "%DOWNLOADS%\Images\"
move "%DOWNLOADS%\*.bmp" "%DOWNLOADS%\Images\"

:: Move video files to Videos folder
move "%DOWNLOADS%\*.mp4" "%DOWNLOADS%\Videos\"
move "%DOWNLOADS%\*.avi" "%DOWNLOADS%\Videos\"
move "%DOWNLOADS%\*.mkv" "%DOWNLOADS%\Videos\"
move "%DOWNLOADS%\*.mov" "%DOWNLOADS%\Videos\"

:: Move music files to Music folder
move "%DOWNLOADS%\*.mp3" "%DOWNLOADS%\Music\"
move "%DOWNLOADS%\*.wav" "%DOWNLOADS%\Music\"
move "%DOWNLOADS%\*.flac" "%DOWNLOADS%\Music\"

:: Move archive files to Archives folder
move "%DOWNLOADS%\*.zip" "%DOWNLOADS%\Archives\"
move "%DOWNLOADS%\*.rar" "%DOWNLOADS%\Archives\"
move "%DOWNLOADS%\*.tar" "%DOWNLOADS%\Archives\"
move "%DOWNLOADS%\*.7z" "%DOWNLOADS%\Archives\"

:: Move all other files to Others folder
move "%DOWNLOADS%\*" "%DOWNLOADS%\Others\"
