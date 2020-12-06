$TeamsFC = Test-Path "HKCU:\Software\Classes\CLSID\TEST"
$TeamsFC

IF($TeamsFC = ("False")) {Write-Host (New-Item -Path Registry::"HKCU\Software\Classes\CLSID\" -Name "TEST")} ELSE {Write-Host ("This is not true, from False")}

$TeamsFC = Test-Path "HKCU:\Software\Classes\CLSID\TEST"
$TeamsFC