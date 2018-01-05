#!/bin/bash
# Copy macOS configuration file into their appropriate places.

clear
echo "Installing macOS configuration files...."
cp .aliases ~/
cp .ansible.cfg ~/
cp .bash_profile ~/
cp .exports ~/
cp .gitconfig ~/
cp .gitignore ~/
cp .hushlogin ~/
cp .jrnl_config ~/
cp .profile ~/
cp .vimrc ~/
cp .wgetrc ~/
cd ~/
source .bash_profile
echo "All done. Enjoy!"
