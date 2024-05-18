# Download a copy of the script
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/holbs/Omaha/main/Chrome/update3web_demo.js' -OutFile "$env:WINDIR\Temp\chrome_update3web_demo.js"
# Run script for all Google Update clients
(Get-ChildItem -Path "HKLM:\SOFTWARE\Wow6432Node\Google\Update\Clients").PSChildName | Foreach-Object {& "$env:WINDIR\System32\cscript.exe" "$env:WINDIR\Temp\chrome_update3web_demo.js" "$_" 1 3}
