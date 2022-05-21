
choco install -y 7zip
rem choco install -y googlechrome
rem choco install -y googlechrome.canary

choco install -y powershell-core
choco install -y oh-my-posh --force

start pwsh -Command wsl --install

choco install -y vscode
choco install -y vscode-insiders

choco install -y totalcommander
copy /y %USERPROFILE%\Desktop\config\wincmd.ini %USERPROFILE%\AppData\Roaming\GHISLER
copy /y %USERPROFILE%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\"Total Commander"\"Total Commander".lnk %USERPROFILE%\Desktop


choco install -y git --params="'/GitAndUnixToolsOnPath /NoAutoCrlf'" --install-arguments="'/DIR=C:\swtools\git'"
choco install -y sysinternals

choco install -y python --version=3.9.7 --side-by-side

choco install -y microsoft-windows-terminal
copy /y %USERPROFILE%\Desktop\config\settings.json %USERPROFILE%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState

rem %USERPROFILE%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\

choco install -y wsl-ubuntu-2004

rem choco install -y openjdk
choco install -y jdk8
choco install -y javaruntime
choco install -y scala.install

choco install -y lyx --version=2.3.4.1

choco install -y nodejs
choco install -y julia

choco install -y firefox
choco install -y brave

choco install -y vlc
choco install -y hyper


rem choco install -y visualstudio2019buildtools


rem dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
rem dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

start chrome aka.ms/wsl2kernel

mkdir \dev\python_go
cd \dev\python_go

copy c:\dev\WinVM\setup_files\yh-requirements.txt .
copy c:\dev\WinVM\scripts\030_python_first_env.cmd .
copy c:\dev\WinVM\scripts\010_ext_vscode.cmd .
copy c:\dev\WinVM\scripts\020_python_ds_pkg.cmd .

rem wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/yh-requirements.txt
rem wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/ext-vscode.cmd
rem wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/python_first_env.cmd

start cmd 

rem start ext-vscode.cmd

rem python -m venv venv --upgrade-deps
rem pip install -r yh-requirements.txt

secpol


