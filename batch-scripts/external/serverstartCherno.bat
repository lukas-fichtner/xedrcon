@echo off
Title "Server-Start-Manager-Cherno by Xedon"
COLOR 0A
set startcommandCherno="DayZ Cherno" "DZSALModServer.exe" -BEPath=C:\Users\Administrator\Desktop\DayZCherno\battleye -profiles=C:\Users\Administrator\Desktop\DayZCherno\profiles\ -config=serverDZ.cfg -instanceId=1 -scrAllowFileWrite -ip=194.125.248.41 -port=2302 -cpuCount=8 -noFilePatching -dologs -adminlog -freezecheck  -mod=@BaseBuildingPlus;@BuildAnywhere;@CF;@CodeLock;@DisableBaseDestruction;@DayZ-Expansion-Chat;@EasySigns;@EinsamimWaldServerMod;@MoreGuns;@Server_Information_Panel;@VanillaPlusPlusMap;@ZomBerryAdminTools "-dayzserver=DayZServer_x64.exe"
set ServerIP1=127.0.0.1
set ServerIP2=0.0.0.0
set ServerPort1=2302
set ServerPort2=2302
set ServerRcon=nichtdiemama

::start Cherno-Server
cd C:\Users\Administrator\Desktop\DayZCherno
echo "Cherno Server wird gestartet"
start %startcommandCherno%
timeout /T 30
echo "setzte hohe process prio Cherno"
wmic process where name="DayZServer_x64.exe" CALL setpriority 128
timeout /T 30
echo "sperre Cherno Server"
start cmd /c xedrcon admincmd -c lock -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
timeout /T 60
echo "entsperre Cherno Server"
start cmd /c xedrcon admincmd -c unlock -h %ServerIP1% -p %ServerPort1% -k %ServerRcon%
echo "Cherno Server ist gestartet"
