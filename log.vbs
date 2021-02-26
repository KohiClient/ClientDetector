Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c hander.bat"
oShell.Run strArgs, 0, false
