@echo off

:: Change the session to UTF-8
chcp 65001

:: Set the working dir to Genshin Impact Game dir.
set PATH=

:: User selecting server.
echo Select Server
echo 1. Mihoyo Server
echo 2. Bilibili Server
set /p option= Mihoyo Server(1) or Bilibili Server(2): 

::  The server is changed by:
::  1. The original config.ini file is deleted
::  2. The the config.ini file for the corresponding server is copied into the game_dir

IF /i %option%==1 goto guanFu
IF /i %option%==2 goto bFu

echo NOT FOUND.
goto commonexit

:guanFu
del "%PATH%\config.ini"
copy "%PATH%\MyChanger\guanconfig.ini" "%PATH%\config.ini"
echo Now in Mihoyo Server
goto commonexit

:bFu
del "%PATH%\config.ini"
copy "%PATH%\MyChanger\Bconfig.ini" "%PATH%\config.ini"
echo Now in Bilibili Server
goto commonexit

:commonexit
pause
