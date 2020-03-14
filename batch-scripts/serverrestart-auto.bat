@echo off
set ServerIP1=194.125.248.41
set ServerIP2=194.125.248.42
set ServerPort1=2302
set ServerPort2=2302
set ServerRcon=nichtdiemama

echo "Server wird in 60min neu gestartet!"
start /b xedrcon rconcmd -c say -m "Server wird in 60min neu gestartet!" -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon rconcmd -c say -m "Server wird in 60min neu gestartet!" -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /t 108000 /nobreak

echo "Server wird in 30min neu gestartet!"
start /b xedrcon rconcmd -c say -m "Server wird in 30min neu gestartet!" -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon rconcmd -c say -m "Server wird in 30min neu gestartet!" -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /t 54000 /nobreak

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
timeout /t 60 

echo "starte wieder Cherno DayZ Server"
start "Cherno-Server" C:\Users\Administrator\Desktop\DayZCC\scripts\DayZCherno\serverstartCherno.bat

echo "starte wieder Livonia DayZ Server"
start "Livonia-Server" C:\Users\Administrator\Desktop\DayZCC\scripts\DayZLivonia\serverstartLivonia.bat

echo "restart fertig"
exit
