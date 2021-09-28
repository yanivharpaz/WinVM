# install choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# install WSL2
start cmd "/c wsl --install"

# reload environment
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

# create directory for the powershell profile
start cmd "/c mkdir %USERPROFILE%\Documents\PowerShell"

choco install -y wget 
choco install -y git --params="'/GitAndUnixToolsOnPath /NoAutoCrlf'" --install-arguments="'/DIR=C:\swtools\git'"

# reload environment
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

mkdir \dev
cd \dev
git clone https://github.com/yanivharpaz/WinVM.git

# download font and theme to the desktop
cd $env:USERPROFILE\Desktop

copy -Force c:\dev\WinVM\setup_files\DelugiaCodeNerdFontComplete.ttf .\
copy -Force c:\dev\WinVM\setup_files\yaniv_dark_01.deskthemepack .\

mkdir config
cd config

copy -Force c:\dev\WinVM\setup_files\*.* .\
copy -Force c:\dev\WinVM\scripts\*.* .\

choco install -y googlechrome

copy -Force "Microsoft.PowerShell_profile.ps1" $env:USERPROFILE\Documents\PowerShell


