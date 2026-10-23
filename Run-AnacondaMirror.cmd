@echo off
setlocal
title Anaconda Mirror Tool
powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -File "%~dp0Manage-AnacondaMirror.ps1"
set "RESULT=%ERRORLEVEL%"
echo.
if not "%RESULT%"=="0" (
    echo Operation failed with exit code %RESULT%.
    echo If access was denied, close this window and run this file as administrator.
) else (
    echo Operation completed.
)
echo.
pause
exit /b %RESULT%
