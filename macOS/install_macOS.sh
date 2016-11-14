#!/bin/bash
# Copy macOS configuration file into their appropriate places.

clear
echo "Installing macOS configuration files...."
cp .bash_profile ~/
cp .gitconfig ~/
cp .gitignore ~/
cp .jrnl_config ~/
cp .vimrc ~/
cp .wgetrc ~/
cd ~/
source .bash_profile
echo "All done. Enjoy!"
