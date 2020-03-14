@echo off
set ServerIP1=194.125.248.41
set ServerIP2=194.125.248.42
set ServerPort1=2302
set ServerPort2=2302
set ServerRcon=nichtdiemama

echo "Server wird in 5min heruntergefahren"
start /b xedrcon rconcmd -c say -m "Server wird in 5min aufgrund von Wartungsarbeiten heruntergefahren!!!" -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon rconcmd -c say -m "Server wird in 5min aufgrund von Wartungsarbeiten heruntergefahren!!!" -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /t 120 /nobreak

echo "Server wird in 3min heruntergefahren"
start /b xedrcon rconcmd -c say -m "Server wird in 3min aufgrund von Wartungsarbeiten heruntergefahren!!!" -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon rconcmd -c say -m "Server wird in 3min aufgrund von Wartungsarbeiten heruntergefahren!!!" -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /t 120 /nobreak

echo "Server wird in 1min heruntergefahren"
start /b xedrcon rconcmd -c say -m "Server wird in 1min aufgrund von Wartungsarbeiten heruntergefahren!!!" -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon rconcmd -c say -m "Server wird in 1min aufgrund von Wartungsarbeiten heruntergefahren!!!" -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /t 60 /nobreak
start /b xedrcon admincmd -c shutdown -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
start /b xedrcon admincmd -c shutdown -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
echo "Der Server wurde erfolgreich heruntergefahren"
exit