#!/bin/bash
sudo apt-get update
sudo apt-get install -y apt-transport-https conntrack git mc ncdu zsh htop gcc net-tools jq 
sudo apt-get install -y ca-certificates curl gnupg-agent software-properties-common

sudo apt-get install -y python3-pip
sudo apt-get install -y unixodbc-dev

sudo pip3 install pandas tqdm matplotlib plotly scipy ipykernel ipywidgets jupyterlab

sudo systemctl enable docker

sudo groupadd docker
sudo usermod -aG docker $USER
sudo service docker restart

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" 

sudo chsh -s `which zsh`

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

sudo sed -i 's/plugins=(git)/plugins=(git git-flow brew history node npm kubectl zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc



