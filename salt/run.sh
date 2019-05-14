#!/bin/bash

echo "Configuration starting..."

echo "Installing updates and salt.."

sudo apt-get update -y
sudo apt-get upgrade -y

echo "Installing salt"

sudo apt-get -y install salt-minion

echo "Ready.."

