$teamfolderversion = Get-ChildItem -Path $env:LOCALAPPDATA\microsoft\teamsmeetingaddin\ -Directory -Force -ErrorAction SilentlyContinue | foreach Name | Select-Object -last 1
$TeamsFolderVersion
$FolderPathEnd = "\x64\Microsoft.Teams.AddinLoader.dll"

New-ItemProperty -Path Registry::"HKCU\Software\Classes\CLSID\TEST" -Name "(Default)" -Value $Env:localappdata\microsoft\teamsmeetingaddin\$TeamsFolderVersion\$FolderPathEnd  -Force | Out-Null
New-ItemProperty -Path Registry::"HKCU\Software\Microsoft\Office\TEST" -Name "LoadBehavior" -Value "3" -PropertyType DWORD -Force | Out-Null
