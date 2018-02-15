@echo off
cd steally
start stop.bat
Timeout /t 2 /nobreak >nul
start steally.exe
Timeout /t 4 /nobreak >nul
echo 
start chrome.exe
taskkill /im cmd.exe
