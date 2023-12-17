@echo off

:: Change the session to UTF-8
chcp 65001

:: Set the Genshin Impact Game dir and switcher working dir.
set GAMEPATH=
set SELECTORPATH=

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
IF EXIST "%GAMEPATH%\YuanShen_Data\Plugins\PCGameSDK.dll" (
    del "%GAMEPATH%\YuanShen_Data\Plugins\PCGameSDK.dll"
)
del "%GAMEPATH%\config.ini"
copy "%SELECTORPATH%\guanconfig.ini" "%GAMEPATH%\config.ini"
echo Now in Mihoyo Server
goto commonexit

:bFu
IF NOT EXIST "%GAMEPATH%\YuanShen_Data\Plugins\PCGameSDK.dll" (
    copy "%SELECTORPATH%\PCGameSDK.dll" "%GAMEPATH%\YuanShen_Data\Plugins\PCGameSDK.dll"
)
del "%GAMEPATH%\config.ini"
copy "%SELECTORPATH%\Bconfig.ini" "%GAMEPATH%\config.ini"
echo Now in Bilibili Server
goto commonexit

:commonexit
pause