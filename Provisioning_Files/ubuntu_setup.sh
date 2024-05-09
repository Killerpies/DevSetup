#!/usr/bin/env bash
sudo apt-get -y update
# Add `vagrant` to Administrator
sudo usermod -a -G sudo vagrant
# GUI
sudo apt install -y ubuntu-desktop

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

# Set 'python' = to python3
sudo echo "alias python=python3" > ~/.bash_aliases

# This stops ubuntu from asking to upgrade releases
# Change Prompt=never to lts if you want it
# https://askubuntu.com/questions/1435766/how-to-make-ubuntu-stop-offering-to-upgrade-from-20-04-5-to-22-04-1
sudo sed -i 's/lts$/never/g' /etc/update-manager/release-upgrades



# # Upgrade if release available
# do-release-upgrade