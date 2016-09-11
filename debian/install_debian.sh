#!/bin/bash
# Copy Debian configuration file into their appropriate places.

clear
echo "Installing Debian configuration files...."
cp .bash_aliases ~/
cp .bashrc ~/
cp .profile ~/
cp .wgetrc ~/
source ~/.bash_aliases
source ~/.bashrc
source ~/.profile
echo "All done. Enjoy!"
