@echo off
title PhotoViewer
cls

echo.
echo    ##       ######## ##     ##    ###    ########  ########  ######## ##     ## 
echo    ##       ##        ##   ##    ## ##   ##     ## ##     ## ##       ##     ## 
echo    ##       ##         ## ##    ##   ##  ##     ## ##     ## ##       ##     ## 
echo    ##       ######      ###    ##     ## ########  ##     ## ######   ##     ## 
echo    ##       ##         ## ##   ######### ##   ##   ##     ## ##        ##   ##  
echo    ##       ##        ##   ##  ##     ## ##    ##  ##     ## ##         ## ##   
echo    ######## ######## ##     ## ##     ## ##     ## ########  ########    ###   
echo.
echo                         Apply Registry Changes for PhotoViewer     
echo.

:: Confirm Administrator Privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires administrator privileges.
    echo Please run as administrator and try again.
    pause
    exit /b
)

:: Notify User
echo Applying registry changes...
echo.
pause

:: Apply Registry Changes
echo Adding registry entries for PhotoViewer...

:: Create registry key for PhotoViewer
reg add "HKEY_CLASSES_ROOT\Applications\photoviewer.dll" /f >nul
reg add "HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell" /f >nul
reg add "HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open" /v "MuiVerb" /t REG_SZ /d "@photoviewer.dll,-3043" /f >nul
reg add "HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\command" /v "" /t REG_BINARY /d "25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,74,00,25,00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,72,00,75,00,6e,00,64,00,6c,00,6c,00,33,00,32,00,2e,00,65,00,78,00,65,00,20,00,22,00,25,00,50,00,72,00,6f,00,67,00,72,00,61,00,6d,00,46,00,69,00,6c,00,65,00,73,00,25,00,5c,00,57,00,69,00,6e,00,64,00,6f,00,77,00,73,00,20,00,50,00,68,00,6f,00,74,00,6f,00,20,00,56,00,69,00,65,00,77,00,65,00,72,00,5c,00,50,00,68,00,6f,00,74,00,6f,00,56,00,69,00,65,00,77,00,65,00,72,00,2e,00,64,00,6c,00,6c,00,22,00,2c,00,20,00,49,00,6d,00,61,00,67,00,65,00,56,00,69,00,65,00,77,00,5f,00,46,00,75,00,6c,00,6c,00,73,00,63,00,72,00,65,00,65,00,6e,00,20,00,25,00,31,00,00,00" /f >nul
reg add "HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\open\DropTarget" /v "Clsid" /t REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}" /f >nul
reg add "HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print" /f >nul
reg add "HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\command" /v "" /t REG_BINARY /d "25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,74,00,25,00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,72,00,75,00,6e,00,64,00,6c,00,6c,00,33,00,32,00,2e,00,65,00,78,00,65,00,20,00,22,00,25,00,50,00,72,00,6f,00,67,00,72,00,61,00,6d,00,46,00,69,00,6c,00,65,00,73,00,25,00,5c,00,57,00,69,00,6e,00,64,00,6f,00,77,00,73,00,20,00,50,00,68,00,6f,00,74,00,6f,00,20,00,56,00,69,00,65,00,77,00,65,00,72,00,5c,00,50,00,68,00,6f,00,74,00,6f,00,56,00,69,00,65,00,77,00,65,00,72,00,2e,00,64,00,6c,00,6c,00,22,00,2c,00,20,00,49,00,6d,00,61,00,67,00,65,00,56,00,69,00,65,00,77,00,5f,00,46,00,75,00,6c,00,6c,00,73,00,63,00,72,00,65,00,65,00,6e,00,20,00,25,00,31,00,00,00" /f >nul
reg add "HKEY_CLASSES_ROOT\Applications\photoviewer.dll\shell\print\DropTarget" /v "Clsid" /t REG_SZ /d "{60fd46de-f830-4894-a628-6fa81bc0190d}" /f >nul

:: Completion Message
echo.
echo Registry changes applied successfully!
echo.
pause
