
# install choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# install WSL2
start cmd "/c wsl --install"

# reload environment
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

# create directory for the powershell profile
start cmd "/c mkdir %USERPROFILE%\Documents\PowerShell"

choco install -y wget

# download font and theme to the desktop
cd $env:USERPROFILE\Desktop
start cmd "/c wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/DelugiaCodeNerdFontComplete.ttf"
start cmd "/c wget --no-check-certificate wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/yaniv_dark_01.deskthemepack"

mkdir config
cd config

start cmd "/c wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/settings.json"
start cmd "/c wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/wincmd.ini"
start cmd "/c wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/010_ext_vscode.cmd"
start cmd "/c wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/omp.ps1"
start cmd "/c wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/yh-requirements.txt"
start cmd "/c wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/Microsoft.PowerShell_profile.ps1"
start cmd "/c wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/030_python_first_env.cmd"
start cmd "/c wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/001_setup_win_tools.cmd"
start cmd "/c wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/020_python_ds_pkg.cmd"

choco install -y googlechrome

copy "Microsoft.PowerShell_profile.ps1" $env:USERPROFILE\Documents\PowerShell

