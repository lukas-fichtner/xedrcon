@echo off
Title "Server-Restart-Manager by Xedon"
COLOR 0C
set ServerIP1=127.0.0.1
set ServerIP2=0.0.0.0
set ServerPort1=2302
set ServerPort2=2302
set ServerRcon=nichtdiemama

echo "Server wird in 60min neu gestartet!"
start /b xedrcon rconcmd -c say -m "Server wird in 60min neu gestartet!" -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon rconcmd -c say -m "Server wird in 60min neu gestartet!" -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /t 900 /nobreak

echo "Server wird in 45min neu gestartet!"
start /b xedrcon rconcmd -c say -m "Server wird in 45min neu gestartet!" -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon rconcmd -c say -m "Server wird in 45min neu gestartet!" -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /t 900 /nobreak

echo "Server wird in 30min neu gestartet!"
start /b xedrcon rconcmd -c say -m "Server wird in 30min neu gestartet!" -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon rconcmd -c say -m "Server wird in 30min neu gestartet!" -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /t 900 /nobreak

echo "Server wird in 15min neu gestartet!"
start /b xedrcon rconcmd -c say -m "Server wird in 15min neu gestartet!" -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon rconcmd -c say -m "Server wird in 15min neu gestartet!" -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /t 300 /nobreak

echo "Server wird in 10min neu gestartet!"
start /b xedrcon rconcmd -c say -m "Server wird in 10min neu gestartet!" -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon rconcmd -c say -m "Server wird in 10min neu gestartet!" -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /t 300 /nobreak

echo "Server wird in 5min neu gestartet!"
start /b xedrcon rconcmd -c say -m "Server wird in 5min neu gestartet!" -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon rconcmd -c say -m "Server wird in 5min neu gestartet!" -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /t 240 /nobreak

echo "Server wird in 1min neu gestartet!"
start /b xedrcon rconcmd -c say -m "Server wird in 1min neu gestartet!" -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon rconcmd -c say -m "Server wird in 1min neu gestartet!" -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /t 60 /nobreak

echo "Server wird JETZT neu gestartet!"
start /b xedrcon rconcmd -c say -m "Server wird JETZT neu gestartet!" -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon rconcmd -c say -m "Server wird JETZT neu gestartet!" -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /t 5 /nobreak
start /b xedrcon admincmd -c shutdown -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon admincmd -c shutdown -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /t 5 /nobreak

echo "Der Server wurde erfolgreich heruntergefahren"
timeout /t 2 /nobreak

echo "starte backup-service"
start /b C:\Users\Administrator\Desktop\DayZCC\scripts\autoBackup.bat
timeout /t 10

echo "starte wieder Cherno DayZ Server"
start /b C:\Users\Administrator\Desktop\DayZCC\scripts\DayZCherno\serverstartCherno.bat

echo "starte wieder Livonia DayZ Server"
start /b C:\Users\Administrator\Desktop\DayZCC\scripts\DayZLivonia\serverstartLivonia.bat

echo "restart fertig"
