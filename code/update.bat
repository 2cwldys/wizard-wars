@echo off
call settings.bat

echo Updating %WW_BUILD%...

set SRC=%WW_SOURCEPATH%\build
set DEST=%WW_STEAMPATH%\SteamApps\%WW_STEAMUSER%\half-life\%WW_DIR%

IF EXIST "%SRC%\client.dll" (
copy "%SRC%\client.dll" "%DEST%\cl_dlls\client.dll" /y >nul
echo copied cl_dlls\client.dll
) ELSE (
echo couldn't copy cl_dlls\client.dll
)

IF EXIST "%SRC%\hl.dll" (
copy "%SRC%\hl.dll" "%DEST%\dlls\wizwars.dll" /y >nul
echo copied dlls\wizwars.dll
) ELSE (
IF EXIST "%SRC%\wizwars.dll" (
copy "%SRC%\wizwars.dll" "%DEST%\dlls\wizwars.dll" /y >nul
echo copied dlls\wizwars.dll
) ELSE (
echo couldn't copy dlls\wizwars.dll
)
)

echo.
echo Done.
if %WW_PAUSE%==1 pause
