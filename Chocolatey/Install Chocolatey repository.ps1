#install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#insatll chocolateygui
choco install chocolateygui -y

#install Nexus Repository
choco install nexus-oss -y
## https://www.youtube.com/watch?v=UehkG1VHtz0&t=149s&ab_channel=GaryEwanPark

#Test Source
choco source

#Delete chocolatey Source
choco source remove -n=chocolatey

#Add chocolatey Source