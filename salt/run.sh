#!/bin/bash
# Copyright 2019 Joakim Saras  GPL 3

echo "Configuration starting for important installations...."
set -o verbose

echo "Installing important packages and programs"
sudo apt-get update
sudo apt-get -y install git salt-minion
wget /home/xubuntu/Downloads/ https://p-ams2.pcloud.com/cBZ2SG254Z6UT4s4ZeMevZZwV0DA7Z2ZZ3d4ZkZu5laXZJJZ8VZIVZv7Z17ZbXZBkZPZO0Zq5Z50ZrkZ05ZL0ZNyUE7ZLFMcSNuT2UhRmI8qIYOq50Lr6F8X/pcloud
cd /home/xubuntu/Downloads
chmod +x pcloud.run
./pcloud.run

echo "Retrieving and Applying Settings..."
echo 'master: localhost'|sudo tee /etc/salt/minion
git clone https://github.com/JoakimSaras/saras
cd saras/
./highstate.sh

echo "Configuring necessary things for desktop"
setxkbmap fi
sudo timedatectl set-timezone Europe/Helsinki
git config --global credential.helper "cache --timeout=3600"
git config --global push.default simple
# git config --global user.email "niklas.saras@gmail.com"
# git config --global user.name "Niklas Saras"

echo "More tips and tricks in GitHub files.."
echo "Done."
