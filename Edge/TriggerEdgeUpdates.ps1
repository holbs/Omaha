# Download a copy of the script
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/holbs/Omaha/main/Edge/update3web_demo.js' -OutFile "$env:WINDIR\Temp\edge_update3web_demo.js"
# Run script for all Edge Update clients
(Get-ChildItem -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\EdgeUpdate\Clients").PSChildName | Foreach-Object {& "$env:WINDIR\System32\cscript.exe" "$env:WINDIR\Temp\edge_update3web_demo.js" "$_" 1 3}
