#!/bin/bash

echo "Configuring computer..."

echo "Installing updates and upgrades"

sudo apt-get update

sudo apt-get -y upgrade

echo "Install and configure salt"

sudo apt-get -y install salt-minion

echo 'master: localhost'|sudo tee /etc/salt/minion 


echo "All done. Please wait for more instructions by Master!"

