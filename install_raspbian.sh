#!/bin/bash
# Copy RaspbianOS configuration file into their appropriate places.

clear
echo "Installing RaspbianOS configuration files...."
cp Raspbian/.bash_aliases ~/
cp Raspbian/.bashrc ~/
cp Raspbian/.gitconfig ~/
cp Raspbian/.profile ~/
source ~/.bash_aliases
source ~/.bashrc
source ~/.profile
echo "All done. Enjoy!"