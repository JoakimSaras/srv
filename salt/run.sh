#!/bin/bash

echo "Configuration starting..."
set -o verbose
setxkbmap fi

echo "Installing Salt and Git..."
sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install salt-minion


echo "Applying Settings..."
echo 'master: localhost'|sudo tee /etc/salt/minion
echo 'id: koti'|sudo tee /etc/salt/minion

echo "Done."


