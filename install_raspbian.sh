#!/bin/bash
# Copy RaspbianOS configuration file into their appropriate places.

clear
echo "Installing RaspbianOS configuration files...."
cp /raspbian/.bash_aliases ~/
cp /raspbian/.bashrc ~/
cp /raspbian/.gitconfig ~/
cp /raspbian/.profile ~/
echo "All done. Enjoy!"