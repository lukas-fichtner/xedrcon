@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
set "fullstamp=%DD%_%MM%_%HH%_%YYYY%"
set /a R=%random%%% 16 +10
set "Chernofullstamp=Cherno_%DD%_%MM%_%YYYY%_%HH%"
set "Livoniafullstamp=Livonia_%DD%_%MM%_%YYYY%_%HH%"

::first DayZ Server
cd C:\Users\Administrator\Documents\tempbc
start C:\"Program Files"\7-Zip\7z.exe a -tzip %Chernofullstamp%.zip C:\Users\Administrator\Desktop\DayZCherno\mpmissions
timeout 20
start C:\"Program Files"\rclone\rclone.exe mkdir nxcloud:/%fullstamp% -P
start C:\"Program Files"\rclone\rclone.exe mkdir nxcloud:/%fullstamp%/%Chernofullstamp% -P
start C:\"Program Files"\rclone\rclone.exe copy C:\Users\Administrator\Documents\tempbc\%Chernofullstamp%.zip nxcloud:/%fullstamp%/%Chernofullstamp%/ -P
timeout 1

::sec DayZ Server
cd C:\Users\Administrator\Documents\tempbc
start C:\"Program Files"\7-Zip\7z.exe a -tzip %Livoniafullstamp%.zip C:\Users\Administrator\Desktop\DayZLivonia\mpmissions
timeout 20
start C:\"Program Files"\rclone\rclone.exe mkdir nxcloud:/%fullstamp%/%Livoniafullstamp% -P
start C:\"Program Files"\rclone\rclone.exe copy C:\Users\Administrator\Documents\tempbc\%Livoniafullstamp%.zip nxcloud:/%fullstamp%/%Livoniafullstamp%/ -P

timeout 60
del C:\Users\Administrator\Documents\tempbc\%Chernofullstamp%.zip
del C:\Users\Administrator\Documents\tempbc\%Livoniafullstamp%.zip

