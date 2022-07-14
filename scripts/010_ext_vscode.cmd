@echo off
echo Installing Visual Studio Code extensions

pwsh -command code --install-extension ms-python.python
pwsh -command code --install-extension ms-python.gather
pwsh -command code --install-extension ms-vscode-remote.vscode-remote-extensionpack

pwsh -command code --install-extension arcticicestudio.nord-visual-studio-code
pwsh -command code --install-extension dracula-theme.theme-dracula
pwsh -command code --install-extension pkief.material-icon-theme
pwsh -command code --install-extension mechatroner.rainbow-csv
pwsh -command code --install-extension zainchen.json
pwsh -command code --install-extension yzhang.markdown-all-in-one

pwsh -command code --install-extension ms-azuretools.vscode-azurestorage
pwsh -command code --install-extension scala-lang.scala

pwsh -command code --install-extension sourcery.sourcery

echo Installing Visual Studio Code insiders extensions

pwsh -command code-insiders --install-extension ms-python.python
pwsh -command code-insiders --install-extension ms-python.gather
pwsh -command code-insiders --install-extension ms-vscode-remote.vscode-remote-extensionpack

pwsh -command code-insiders --install-extension arcticicestudio.nord-visual-studio-code
pwsh -command code-insiders --install-extension dracula-theme.theme-dracula
pwsh -command code-insiders --install-extension pkief.material-icon-theme
pwsh -command code-insiders --install-extension mechatroner.rainbow-csv
pwsh -command code-insiders --install-extension zainchen.json
pwsh -command code-insiders --install-extension yzhang.markdown-all-in-one
pwsh -command code-insiders --install-extension scala-lang.scala

pwsh -command code-insiders --install-extension mhutchie.git-graph

pwsh -command code-insiders --install-extension ms-azuretools.vscode-azurestorage





