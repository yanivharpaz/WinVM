
choco install -y 7zip
rem choco install -y googlechrome
rem choco install -y googlechrome.canary

choco install -y powershell-core
choco install -y oh-my-posh --force

rem start pwsh -Command wsl --install

choco install -y vscode
choco install -y vscode-insiders

choco install -y totalcommander
copy /y %USERPROFILE%\Desktop\config\wincmd.ini %USERPROFILE%\AppData\Roaming\GHISLER

choco install -y git --params="'/GitAndUnixToolsOnPath /NoAutoCrlf'" --install-arguments="'/DIR=C:\swtools\git'"
choco install -y sysinternals

choco install -y python

choco install -y microsoft-windows-terminal
copy /y %USERPROFILE%\Desktop\config\settings.json %USERPROFILE%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState


%USERPROFILE%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\
choco install -y wsl-ubuntu-2004

choco install -y anaconda3

choco install -y vcredist-all

choco install -y docker-desktop

rem choco install -y openjdk
choco install -y jdk8
choco install -y javaruntime
choco install -y scala.install

choco install -y nodejs
choco install -y firefox

choco install -y vlc


rem choco install -y visualstudio2019buildtools

choco install -y visualstudio2019buildtools --package-parameters "--add Microsoft.VisualStudio.Workload.VCTools --includeRecommended --includeOptional --passive --locale en-US"

choco install -y ssms


rem dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
rem dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

start chrome aka.ms/wsl2kernel

mkdir \dev\python_go
cd \dev\python_go
wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/yh-requirements.txt
wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/ext-vscode.cmd
wget --no-check-certificate https://gitlab.com/yaniv.harpaz/notes/-/raw/master/older_stuff/python_first_env.cmd

start cmd 

rem start ext-vscode.cmd

rem python -m venv venv --upgrade-deps
rem pip install -r yh-requirements.txt

secpol

start chrome aka.ms/buildtools

