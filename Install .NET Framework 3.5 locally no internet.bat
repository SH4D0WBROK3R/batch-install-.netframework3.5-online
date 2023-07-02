@echo off

setlocal enabledelayedexpansion

echo Interactive .NET Framework 3.5 Offline Enablement
echo.

set /p "source_path=Enter the path to the Windows installation media (e.g., D:\): "
echo.

echo Enabling .NET Framework 3.5...
dism /online /enable-feature /featurename:NetFx3 /all /Source:"%source_path%" /LimitAccess

if %errorlevel% equ 0 (
    echo.
    echo .NET Framework 3.5 has been successfully enabled.
) else (
    echo.
    echo An error occurred while enabling .NET Framework 3.5.
)

echo.
pause