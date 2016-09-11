#!/bin/bash
# Copy Debian configuration file into their appropriate places.

clear
echo "Installing Debian configuration files...."
cp /debian/.bash_aliases ~/
cp /debian/.bashrc ~/
cp /debian/.gitconfig ~/
cp /debian/.profile ~/
echo "All done. Enjoy!"