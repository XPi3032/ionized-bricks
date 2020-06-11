#!/bin/bash
echo 'This script will install Spotify Connect client software on your Raspberry Pi.'
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install apt-transport-https -y
curl -sSL https://dtcooper.github.io/raspotify/key.asc | sudo apt-key add -v -
echo 'deb https://dtcooper.github.io/raspotify raspotify main' | sudo tee /etc/apt/sources.list.d/raspotify.list
sudo apt update
sudo apt install raspotify -y
echo 'All done! Edit the file at /etc/default/raspotify by executing: sudo nano /etc/default/raspotify'
