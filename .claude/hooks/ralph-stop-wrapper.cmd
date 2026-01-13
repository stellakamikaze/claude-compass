@echo off
REM Wrapper per Ralph-Wiggum Stop Hook
REM Esegue operazioni di cleanup alla fine della sessione

REM Chiama notify-complete se esiste
if exist "%USERPROFILE%\.claude\hooks\notify-complete.ps1" (
    powershell.exe -ExecutionPolicy Bypass -File "%USERPROFILE%\.claude\hooks\notify-complete.ps1" 2>nul
)

exit /b 0
