#!/bin/bash

echo "Configuration starting..."
setxkbmap fi
echo "Installing updates and salt.."

sudo apt-get update
sudo apt-get upgrade

echo "Installing salt"

sudo apt-get -y install salt-minion

echo "Ready..Please hold for instructions given from Master."

