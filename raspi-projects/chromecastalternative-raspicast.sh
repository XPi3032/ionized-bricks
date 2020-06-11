#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install git make -y
sudo apt-get install omxplayer -y
cd ~
git clone https://github.com/HaarigerHarald/omxiv.git
sudo apt-get install libjpeg8-dev libpng12-dev -y
cd ~/omxiv
make ilclient
make
sudo make install
echo 'Download the raspicast application to connect: https://bit.ly/raspicastapp'
