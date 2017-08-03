@echo off
set "list=2952664 2976978 2990214 3021917 3022345 3035583 3044374 3050265 3050267 3064683 3068708 3072318 3075249 3075851 3075853 3080149 3083324 3083325 3083710 3083711 3102810 3102812 3112336 3112343 3121461 3123862 3135445 3135449 3138612 3138615 3150513 3173040"

%windir%\system32\reg.exe query "HKU\S-1-5-19" 1>nul 2>nul || goto :eof
cd /d "%~dp0"
(echo Dim objArgs
echo Set objArgs ^= Wscript.Arguments
echo Dim updateSession, updateSearcher
echo Set updateSession ^= CreateObject^("Microsoft.Update.Session"^)
echo Set updateSearcher ^= updateSession.CreateUpdateSearcher^(^)
echo Wscript.Stdout.Write "Checking for updates..." 
echo Dim searchResult
echo Set searchResult ^= updateSearcher.Search^("IsInstalled=0"^)
echo Dim update, kbArticleId, index, index2
echo WScript.Echo " "
echo WScript.Echo " "
echo For index ^= ^0 To searchResult.Updates.Count ^- ^1
echo     Set update ^= searchResult.Updates.Item^(index^)
echo     For index2 ^= ^0 To update.KBArticleIDs.Count - ^1
echo         kbArticleId ^= update.KBArticleIDs^(index2^)
echo         For Each hotfixId in objArgs
echo             If kbArticleId ^= hotfixId Then
echo                 If update.IsHidden ^= False Then
echo                     WScript.Echo "Hiding update: " ^& update.Title
echo                     update.IsHidden ^= True
echo                 Else
echo                     WScript.Echo "Already hidden: " ^& update.Title
echo                 End If          
echo             End If
echo         Next
echo     Next
echo Next
echo.)>Hide.vbs
echo.
cscript.exe //Nologo Hide.vbs %list%
echo.
echo.
echo Press any key to Exit
pause >nul
del Hide.vbs
exit