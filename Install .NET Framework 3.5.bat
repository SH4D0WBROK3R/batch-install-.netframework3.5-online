@echo off

echo Installing .NET Framework 3.5...
echo.

REM Enable .NET Framework 3.5 installation from the internet
dism /online /enable-feature /featurename:NetFx3 /all /LimitAccess /source:"https://go.microsoft.com/fwlink/?LinkId=2085159" /norestart

echo.
echo .NET Framework 3.5 installation completed.
echo.
echo *** Please restart your computer to apply the changes. ***
pause