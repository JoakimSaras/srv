#!/bin/bash

echo "Retrieving GitHub repository..."

git clone https://github.com/JoakimSaras/saras

echo "Configuring necessary things for GIT.."

git config --global credential.helper "cache --timeout=3600"
git config --global push.default simple
# git config --global user.email "joakim.saras@gmail.com"
# git config --global user.name "Testi Testinen"

echo "More tips and tricks in GitHub folder / files. Use "cat filename" "

echo "Done."
