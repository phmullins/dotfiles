#!/bin/bash
# Copy macOS configuration file into their appropriate places.

clear
echo "Installing macOS configuration files...."
cp /macOS/.bash_file ~/
cp /macOS/.gitconfig ~/
cp /macOS/.gitignore ~/
cp /macOS/.jrnl_config ~/
cp /macOS/.vimrc ~/
echo "All done. Enjoy!"