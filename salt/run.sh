#!/bin/bash

echo "Configuration starting..."
setxkbmap fi

echo "Installing Salt-Minion..."

sudo apt-get update
sudo apt-get -y install salt-minion

echo "Applying Settings..."
echo 'master: localhost'|sudo tee /etc/salt/minion
echo "Done."
