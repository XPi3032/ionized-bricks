#!/bin/bash

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "This script must be run as root"
	exit 1
fi

echo 'Updating repository lists.'
sleep 1
apt update
echo 'Updating currently installed packages.'
sleep 1
apt upgrade -y
apt --fix-broken install -y
echo 'Updating distribution packages.'
sleep 1
apt dist-upgrade -y
apt --fix-broken install
echo 'Downloading all remaining software.'
sleep 1
apt --fix-broken install -y
apt full-upgrade -y
