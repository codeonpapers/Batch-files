@echo off
SET destinationPath=C:\Users\%USERNAME%\Downloads
::Change directory. "/d" will change one drive to another. Like D to C so on.
cd /d "%destinationPath%"
::Photos
if not exist "%destinationPath%\Photos" (
    mkdir Photos
    for %%i in (*.png *.jpg *.jpeg *.gif *.bmp *.tif *.tiff *.webp *.heic *.heif *.png *.PNG *.jpg *.JPG *.jpeg *.JPEG *.gif *.GIF *.bmp *.BMP *.tif *.TIF *.tiff *.TIFF *.webp *.WEBP *.heic *.HEIC *.heif *.HEIF) do (
        move "%destinationPath%\%%i" "%destinationPath%\Photos"
    )
) else (
    for %%i in (*.png *.jpg *.jpeg *.gif *.bmp *.tif *.tiff *.webp *.heic *.heif *.png *.PNG *.jpg *.JPG *.jpeg *.JPEG *.gif *.GIF *.bmp *.BMP *.tif *.TIF *.tiff *.TIFF *.webp *.WEBP *.heic *.HEIC *.heif *.HEIF) do (
        move "%destinationPath%\%%i" "%destinationPath%\Photos"
    )
)
::Videos
if not exist "%destinationPath%\Videos" (
    mkdir Videos
    for %%i in (*.mp4 *.avi *.mov *.mkv *.wmv *.flv *.webm *.mpeg *.mpg *.3gp *.rm *.vob *.mp4 *.MP4 *.avi *.AVI *.mov *.MOV *.mkv *.MKV *.wmv *.WMV *.flv *.FLV *.webm *.WEBM *.mpeg *.MPEG *.mpg *.MPG *.3gp *.3GP *.rm *.RM *.vob *.VOB) do (
        move "%destinationPath%\%%i" "%destinationPath%\Videos"
    )
) else (
    for %%i in (*.mp4 *.avi *.mov *.mkv *.wmv *.flv *.webm *.mpeg *.mpg *.3gp *.rm *.vob *.mp4 *.MP4 *.avi *.AVI *.mov *.MOV *.mkv *.MKV *.wmv *.WMV *.flv *.FLV *.webm *.WEBM *.mpeg *.MPEG *.mpg *.MPG *.3gp *.3GP *.rm *.RM *.vob *.VOB) do (
        move "%destinationPath%\%%i" "%destinationPath%\Videos"
    )
)
::Audio
if not exist "%destinationPath%\Audio" (
    mkdir Audio
    for %%i in (*.mp3 *.wav *.aac *.flac *.ogg *.m4a *.wma *.alac *.aiff *.mp4 *.ra *.amr *.pcm *.mp3 *.MP3 *.wav *.WAV *.aac *.AAC *.flac *.FLAC *.ogg *.OGG *.m4a *.M4A *.wma *.WMA *.alac *.ALAC *.aiff *.AIFF *.ra *.RA *.amr *.AMR *.pcm *.PCM) do (
        move "%destinationPath%\%%i" "%destinationPath%\Audio"
    )
) else (
    for %%i in (*.mp3 *.wav *.aac *.flac *.ogg *.m4a *.wma *.alac *.aiff *.mp4 *.ra *.amr *.pcm *.mp3 *.MP3 *.wav *.WAV *.aac *.AAC *.flac *.FLAC *.ogg *.OGG *.m4a *.M4A *.wma *.WMA *.alac *.ALAC *.aiff *.AIFF *.ra *.RA *.amr *.AMR *.pcm *.PCM) do (
        move "%destinationPath%\%%i" "%destinationPath%\Audio"
    )
)
::Documents
if not exist "%destinationPath%\Documents" (
    mkdir Documents
    for %%i in (*.pdf *.doc *.docx *.txt *.rtf *.odt *.xls *.xlsx *.ppt *.pptx *.csv *.html *.md *.epub *.tex *.pages *.xml *.log *.pdf *.PDF *.doc *.DOC *.docx *.DOCX *.txt *.TXT *.rtf *.RTF *.odt *.ODT *.xls *.XLS *.xlsx *.XLSX *.ppt *.PPT *.pptx *.PPTX *.csv *.CSV *.html *.HTML *.md *.MD *.epub *.EPUB *.tex *.TEX *.pages *.PAGES *.xml *.XML *.log *.LOG) do (
        move "%destinationPath%\%%i" "%destinationPath%\Documents"
    )
) else (
    for %%i in (*.pdf *.doc *.docx *.txt *.rtf *.odt *.xls *.xlsx *.ppt *.pptx *.csv *.html *.md *.epub *.tex *.pages *.xml *.log *.pdf *.PDF *.doc *.DOC *.docx *.DOCX *.txt *.TXT *.rtf *.RTF *.odt *.ODT *.xls *.XLS *.xlsx *.XLSX *.ppt *.PPT *.pptx *.PPTX *.csv *.CSV *.html *.HTML *.md *.MD *.epub *.EPUB *.tex *.TEX *.pages *.PAGES *.xml *.XML *.log *.LOG) do (
        move "%destinationPath%\%%i" "%destinationPath%\Documents"
    )
)
::C++
if not exist "%destinationPath%\C++" (
    mkdir "C++"
    for %%i in (*.cpp *.CPP) do (
        move "%destinationPath%\%%i" "%destinationPath%\C++"
    )
) else (
    for %%i in (*.cpp *.CPP) do (
        move "%destinationPath%\%%i" "%destinationPath%\C++"
    )
)
::JAVA
if not exist "%destinationPath%\JAVA" (
    mkdir JAVA
    for %%i in (*.java *.JAVA) do (
        move "%destinationPath%\%%i" "%destinationPath%\JAVA"
    )
) else (
    for %%i in (*.java *.JAVA) do (
        move "%destinationPath%\%%i" "%destinationPath%\JAVA"
    )
)
::Python
if not exist "%destinationPath%\Python" (
    mkdir Python
    for %%i in (*.py *.PY) do (
        move "%destinationPath%\%%i" "%destinationPath%\Python"
    )
) else (
    for %%i in (*.py *.PY) do (
        move "%destinationPath%\%%i" "%destinationPath%\Python"
    )
)
::Clean disk
cleanmgr /sagerun:1