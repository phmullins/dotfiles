#!/bin/bash
# Copy RaspbianOS configuration file into their appropriate places.

clear
echo "Installing RaspbianOS configuration files...."
cp .bash_aliases ~/
cp .bashrc ~/
cp .gitconfig ~/
cp .profile ~/
cp .wgetrc ~/
cd ~/ || exit
source .bash_aliases
source .bashrc
source .profile
echo "All done. Enjoy!"
