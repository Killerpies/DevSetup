#!/usr/bin/env bash

sudo apt-get -y update
# Programs/Services
sudo apt install -y coreutils
sudo apt install -y zip
sudo apt install -y unzip
sudo apt install -y python3
sudo pip install -y cfn-lint
sudo apt install -y git-all
sudo apt install -y nodejs
sudo apt install -y npm
sudo apt install -y net-tools
sudo snap install --classic code # or code-insiders
sudo apt-get -y update


# Set 'python' = to python3
sudo echo "alias python=python3" > ~/.bash_aliases

# Docker
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

# Add Docker's official GPG key:
sudo apt-get -y update
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get -y update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world

# AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install


# Upgrade installed packages
sudo apt upgrade -y


code --install-extension eamodio.gitlens
code --install-extension kddejong.vscode-cfn-lint
code --install-extension ms-vscode-remote.remote-containers
code --install-extension Tyriar.sort-lines
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension esbenp.prettier-vscode
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.debugpy
code --install-extension redhat.vscode-yaml