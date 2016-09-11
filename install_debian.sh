#!/bin/bash
# Copy Debian configuration file into their appropriate places.

clear
echo "Installing Debian configuration files...."
cp /Linux/Debian/.bash_aliases ~/
cp /Linux/Debian/.bashrc ~/
cp /Linux/Debian/.gitconfig ~/
cp /Linux/Debian/.profile ~/
echo "All done. Enjoy!"