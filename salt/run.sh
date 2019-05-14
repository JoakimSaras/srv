#!/bin/bash

echo "Configuration starting..."
setxkbmap fi

echo "Installing Salt-Minion and DropBox..."

sudo apt-get update
sudo apt-get -y install salt-minion

cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

echo "Applying Settings..."
echo 'master: localhost'|sudo tee /etc/salt/minion
echo "Done."
