#!/usr/bin/env bash
# dotfile Installer v0.1.2.
# Copy macOS configuration file into their appropriate places.
# by Patrick H. Mullins (patrick@arkmail.net).
# Created 2018-09-09 @ 08:24 AM. | Updated 2019-07-27 @ 06:42 AM.

# Clear the screen.
clear

# Assign paths to variables.
location=dotfiles

# Use rsync to copy files to the destination folders.
echo "Installing macOS configuration files...."
rsync bin ~/
rsync $location/.aliases ~/
rsync $location/.ansible.cfg ~/
rsync $location/.bash_profile ~/
rsync $location/.exports ~/
rsync $location/.gitconfig ~/
rsync $location/.gitignore ~/
rsync $location/.hushlogin ~/
rsync $location/.jrnl_config ~/
rsync $location/.profile ~/
rsync $location/.vimrc ~/
rsync $location/.wgetrc ~/
cd ~/
source .bash_profile
echo "All done. Enjoy!"
