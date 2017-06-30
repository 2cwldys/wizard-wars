@echo off
call settings.bat
call update.bat

echo Debugging %WW_BUILD%...

cd /d "%WW_STEAMPATH%\SteamApps\%WW_STEAMUSER%\half-life\"

if exist hl.exe (
hl.exe %WW_DPARAMS%
) else (
echo "hl.exe" not found, check settings.bat.
)

echo.
echo Done.
if %WW_PAUSE%==1 pause
