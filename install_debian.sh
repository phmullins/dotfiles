#!/bin/bash
# Copy Debian configuration file into their appropriate places.

clear
echo "Installing Debian configuration files...."
cp Debian/.bash_aliases ~/
cp Debian/.bashrc ~/
cp Debian/.profile ~/
source ~/.bash_aliases
source ~/.bashrc
source ~/.profile
echo "All done. Enjoy!"
