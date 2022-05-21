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


