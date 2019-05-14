#!/bin/bash


echo "Configuration starting..."
set -o verbose

echo "Installing Salt and updates..."
sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install salt-minion

echo "Retrieving and Applying Settings..."
echo 'master: localhost'|sudo tee /etc/salt/minion

echo "Configuring..."
setxkbmap fi

echo "Done."
