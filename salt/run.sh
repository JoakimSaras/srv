#!/bin/bash

echo "Configuration starting..."
setxkbmap fi

echo "Installing updates and salt.."
sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install salt-minion

echo "Ready.."

