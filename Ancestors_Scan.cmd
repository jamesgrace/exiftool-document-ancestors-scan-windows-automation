@echo off

REM - - - - - - - - - - - - version 18august2021 - - -
REM
REM
REM  ExifTool - https://exiftool.org/install.html
REM
REM  Blat (64bit) - https://www.blat.net
REM
REM
REM - - - - - - - - - - - - - - - - - - - - - - - - - -


set exiftoollocation=C:\Windows

set blatlocation=C:\Program Files\Blat

set scanfolder=D:\ASSETS

set scanlogfolder=D:\Ancestors Scan

set scanlogfilename=Ancestors_Scan_Log.txt

set emailserver=mail.example.com

set emailto=recipient@example.com

set emailfrom=server_noreply@example.com

set emailsubject="Automation Notification: Ancestors Scan Log"


REM - - - - - - - - - - - - - - - - - - - - - - - - -
REM - - - - - - - - - - - - - - - - - - - - - - - - -


del "%scanlogfolder%\%scanlogfilename%" /Q

> "%scanlogfolder%\%scanlogfilename%" 2>&1 (

"%exiftoollocation%\exiftool.exe" -m -p "$directory/$filename" -r -if "$documentancestors and (()=$documentancestors =~ /, /g) > 100" "%scanfolder%"

)

"%blatlocation%\blat.exe" "%scanlogfolder%\%scanlogfilename%" -to %emailto% -f %emailfrom% -s %emailsubject% -server %emailserver%
