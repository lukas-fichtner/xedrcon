@echo off
Title "Server-Start-Manager-Livonia by Xedon"
COLOR 0A
set startcommandLivonia="DayZ Livonia" "DZSALModServer.exe" -BEPath=C:\Users\Administrator\Desktop\DayZLivonia\battleye -profiles=C:\Users\Administrator\Desktop\DayZLivonia\profiles\ -config=serverDZ.cfg -instanceId=1 -scrAllowFileWrite -ip=194.125.248.42 -port=2302 -cpuCount=8 -noFilePatching -dologs -adminlog -freezecheck -serverMod= -mod=@BuildAnywhere;@CF;@CodeLock;@DisableBaseDestruction;@DayZ-Expansion-Chat;@EinsamimWaldServerMod;@MoreGuns;@Server_Information_Panel;@VanillaPlusPlusMap;@ZomBerryAdminTools "-dayzserver=DayZServer_x64.exe"
set ServerIP1=127.0.0.1
set ServerIP2=0.0.0.0
set ServerPort1=2302
set ServerPort2=2302
set ServerRcon=nichtdiemama

::start Livonia-Server
cd C:\Users\Administrator\Desktop\DayZLivonia
echo "Livonia Server wird gestartet"
start %startcommandLivonia%
timeout /T 30
echo "setzte hohe process prio Livonia"
wmic process where name="DayZServer_x64.exe" CALL setpriority 128
timeout /T 30
echo "sperre Livonia Server"
start cmd /c xedrcon admincmd -c lock -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
timeout /T 60
echo "entsperre Livonia Server"
start cmd /c xedrcon admincmd -c unlock -h %ServerIP2% -p %ServerPort2% -k %ServerRcon%
echo "Livonia Server ist gestartet"
