#!/usr/bin/env bash
sudo apt-get -y update
# Add `vagrant` to Administrator
sudo usermod -a -G sudo vagrant
# GUI
sudo apt install -y ubuntu-desktop

# This stops ubuntu from asking to upgrade releases
# Change Prompt=never to lts if you want it
# https://askubuntu.com/questions/1435766/how-to-make-ubuntu-stop-offering-to-upgrade-from-20-04-5-to-22-04-1
sudo sed -i 's/lts$/never/g' /etc/update-manager/release-upgrades

# # Upgrade if release available
# do-release-upgrade