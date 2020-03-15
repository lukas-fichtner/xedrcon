@echo off
Title "Server-Start-Manager-Cherno by Xedon"
COLOR 0A
set startscriptLivonia=C:\Users\Administrator\Desktop\DayZCC\scripts\DayZLivonia\serverstartLivonia.bat
set startscriptCherno=C:\Users\Administrator\Desktop\DayZCC\scripts\DayZCherno\serverstartCherno.bat

::start Cherno-Server
start cmd /c %serverstartCherno%

::start Livonia-Server
start cmd /c %serverstartLivonia%

