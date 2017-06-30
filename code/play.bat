@echo off
call settings.bat

echo Playing %WW_BUILD%...

cd /d "%WW_STEAMPATH%\SteamApps\%WW_STEAMUSER%\half-life\"

IF EXIST hl.exe (
hl.exe %WW_PARAMS%
) ELSE (
echo "hl.exe" not found, check settings.bat.
)

echo.
echo Done.
if %WW_PAUSE%==1 pause
