#!/bin/bash
sudo apt update
sudo apt full-upgrade -y
sudo apt --fix-broken install -y
sudo apt autoremove -y
