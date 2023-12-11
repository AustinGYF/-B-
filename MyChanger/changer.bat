@echo off
echo 1. guanFu
echo 2. B_Fu
set /p option= guanFu(1) or B_Fu(2)

IF /i %option%==1 goto guanFu
IF /i %option%==2 goto bFu

echo NOT FOUND.
goto commonexit

:guanFu
del "C:\Program Files\Genshin Impact\Genshin Impact Game\config.ini"
copy "C:\Program Files\Genshin Impact\Genshin Impact Game\Mychanger\guanconfig.ini" "C:\Program Files\Genshin Impact\Genshin Impact Game\config.ini"
echo Now in Guan_Fu
goto commonexit

:bFu
del "C:\Program Files\Genshin Impact\Genshin Impact Game\config.ini"
copy "C:\Program Files\Genshin Impact\Genshin Impact Game\Mychanger\Bconfig.ini" "C:\Program Files\Genshin Impact\Genshin Impact Game\config.ini"
echo Now in B_Fu
goto commonexit

:commonexit
pause