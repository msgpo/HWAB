@echo off
set list=(2952664,2976978,2990214,3021917,3022345,3035583,3044374,3050265,3050267,3064683,3068708,3072318,3075249,3075851,3075853,3080149,3083324,3083325,3083710,3083711,3102810,3102812,3112336,3112343,3121461,3123862,3135445,3135449,3138612,3138615,3150513,3173040)

%windir%\system32\reg.exe query "HKU\S-1-5-19" 1>nul 2>nul || goto :eof
setlocal enableextensions
setLocal EnableDelayedExpansion
cd /d "%~dp0"
set name=
echo.
echo Checking installed packages...
Dism /English /Online /Get-Packages>Packs.txt
for /d %%G in %list% do (
for /f "tokens=3 delims=: " %%i in ('findstr %%G Packs.txt') do echo %%i>>ToRemove.txt
)
if not exist ToRemove.txt echo.&echo Non of the specified updates is found installed&goto :end
for /f %%i in (ToRemove.txt) do (call set /a num+=1)
for /f %%i in (ToRemove.txt) do call :setcount %%i
for /L %%j in (1, 1, %num%) do (
set name=!name! /PackageName:!PK%%j!
)
Dism /Online /NoRestart /Remove-Package %name%
del ToRemove.txt
echo.
echo #########################################################
if exist "%windir%\winsxs\pending.xml" echo.&echo System restart is required.

:end
del Packs.txt
echo.
echo.
echo Press any key to Exit
pause >nul
exit

:setcount
set /a count+=1
set PK%count%=%1
goto :eof