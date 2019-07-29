#!/usr/bin/env bash
# Debian dotfile Installer v0.1.2.
# Copy Debian configuration file into their appropriate places.
# by Patrick H. Mullins (patrick@arkmail.net).
# Created 2018-09-09 @ 08:24 AM. | Updated 2019-07-29 @ 09:14 AM.

clear
echo "Installing Debian configuration files...."
cp .bash_aliases ~/
cp .bashrc ~/
cp .profile ~/
cp .wgetrc ~/
cd ~/
source .bash_aliases
source .bashrc
source .profile
echo "All done. Enjoy!"
