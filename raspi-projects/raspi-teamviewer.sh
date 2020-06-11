#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install wget apt-transport-https -y
wget https://download.teamviewer.com/download/linux/teamviewer-host_armhf.deb
sudo dpkg -i teamviewer-host_armhf.deb
