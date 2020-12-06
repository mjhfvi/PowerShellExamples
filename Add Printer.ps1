$printerName = "HP LaserJet Main Floor 4"
$printerIPAddrs = "10.38.33.7"
$printerPortName = "IP_10.38.33.7"
$printerDriverName = "HP Universal Printing PCL 6"
$printerDriverPath = "D:\upd-pcl6-x64-6.9.0.24630\hpcu240u.inf"
$printerDriverLocalPath = "C:\Windows\System32\DriverStore\FileRepository\hpcu240u.inf_amd64_ddac10eb3da45aeb\hpcu240u.inf"
$printerLocation = "Floor 4"
$printerComment = "Color Printer"
$printerPortExists = Get-Printerport -Name $printerPortName -ErrorAction SilentlyContinue
$printerDriverExists = Get-PrinterDriver -name $printerDriverName -ErrorAction SilentlyContinue

if (-not $printerPortExists) {
  Add-PrinterPort -Name $printerPortName -PrinterHostAddress $printerIPAddrs
}else{
    Write-Warning "Printer Port not installed"
}


if (-not $printerDriverExists) {
    pnputil.exe /add-driver $printerDriverPath /install
    Add-PrinterDriver -Name $printerDriverName -InfPath $printerDriverLocalPath
    Add-Printer -DriverName $printerDriverName -Name $printerName -PortName $printerPortName -Location $printerLocation -Comment $printerComment
}else{
    Write-Warning "Printer Driver not installed"
}
