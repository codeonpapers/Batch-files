@echo off
SET destinationPath=C:\Users\%USERNAME%\Downloads
::Change directory. "/d" will change one drive to another. Like D to C so on.
cd /d "%destinationPath%"
::Photos
if not exist "%destinationPath%\Photos" (
    mkdir Photos
    for %%i in (*.png *.jpg *.jpeg *.gif *.bmp *.tif *.tiff *.webp *.heic *.heif) do (
        move "%destinationPath%\%%i" "%destinationPath%\Photos"
    )
)
::Videos
if not exist "%destinationPath%\Videos" (
    mkdir Videos
    for %%i in (*.mp4 *.avi *.mov *.mkv *.wmv *.flv *.webm *.mpeg *.mpg *.3gp *.rm *.vob) do (
        move "%destinationPath%\%%i" "%destinationPath%\Videos"
    )
)
::Audio
if not exist "%destinationPath%\Audio" (
    mkdir Audio
    for %%i in (*.mp3 *.wav *.aac *.flac *.ogg *.m4a *.wma *.alac *.aiff *.mp4 *.ra *.amr *.pcm) do (
        move "%destinationPath%\%%i" "%destinationPath%\Audio"
    )
)
::Documents
if not exist "%destinationPath%\Documents" (
    mkdir Documents
    for %%i in (*.pdf *.doc *.docx *.txt *.rtf *.odt *.xls *.xlsx *.ppt *.pptx *.csv *.html *.md *.epub *.tex *.pages *.xml *.log) do (
        move "%destinationPath%\%%i" "%destinationPath%\Documents"
    )
)
::C++
if not exist "%destinationPath%\C++" (
    mkdir "C++"
    for %%i in (*.cpp) do (
        move "%destinationPath%\%%i" "%destinationPath%\C++"
    )
)
::JAVA
if not exist "%destinationPath%\JAVA" (
    mkdir JAVA
    for %%i in (*.java) do (
        move "%destinationPath%\%%i" "%destinationPath%\JAVA"
    )
)
::Python
if not exist "%destinationPath%\Python" (
    mkdir Python
    for %%i in (*.py) do (
        move "%destinationPath%\%%i" "%destinationPath%\Python"
    )
)