#!/bin/bash
# Copy macOS configuration file into their appropriate places.

clear
echo "Installing macOS configuration files...."
cp /macOS/.bash_profile ~/
cp /macOS/.gitconfig ~/
cp /macOS/.gitignore ~/
cp /macOS/.jrnl_config ~/
cp /macOS/.vimrc ~/
source .bash_profile
echo "All done. Enjoy!"