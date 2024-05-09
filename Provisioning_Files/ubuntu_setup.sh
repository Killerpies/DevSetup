#!/usr/bin/env bash
sudo apt-get -y update
# Add `vagrant` to Administrator
sudo usermod -a -G sudo vagrant
# GUI
sudo apt install -y ubuntu-desktop

# # Upgrade if release available
# do-release-upgrade