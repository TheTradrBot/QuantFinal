@echo off 
cd /d C:\botcreativehub 
:wait_mt5 
tasklist /FI "IMAGENAME eq terminal64.exe" 2>NUL | find /I "terminal64.exe" >NUL 
if errorlevel 1 (timeout /t 5 /nobreak >NUL & goto wait_mt5) 
timeout /t 10 /nobreak 
venv\Scripts\python.exe main_live_bot.py 
