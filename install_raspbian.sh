#!/bin/bash
# Copy RaspbianOS configuration file into their appropriate places.

clear
echo "Installing RaspbianOS configuration files...."
cp /Linux/Raspbian/.bash_aliases ~/
cp /Linux/Raspbian/.bashrc ~/
cp /Linux/Raspbian/.gitconfig ~/
cp /Linux/Raspbian/.profile ~/
source .bash_aliases && source .bashrc && source .profile
echo "All done. Enjoy!"