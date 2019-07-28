#!/usr/bin/env bash
# updot v0.1.2.
# A script that Updates all of my DOT files.
# by Patrick H. Mullins (patrick@arkmail.net).
# Created 2018-09-09 @ 08:24 AM. | Updated 2019-07-27 @ 06:42 AM.

# Clear the screen.
clear

# Assign destination paths to variables.
scripts=~/Development/desktop/macOS/macos_dotfiles/macOS/bin
dotfiles=~/Development/desktop/macOS/macos_dotfiles/macOS/dotfiles

# Use rsync to copy files to the destination folders.
rsync ~/bin/* $scripts
rsync ~/.aliases $dotfiles
rsync ~/.ansible.cfg $dotfiles
rsync ~/.bash_profile $dotfiles
rsync ~/.dircolors $dotfiles
rsync ~/.exports $dotfiles
rsync ~/.gitconfig $dotfiles
rsync ~/.gitignore_global $dotfiles
rsync ~/.hgignore_global $dotfiles
rsync ~/.hushlogin $dotfiles
rsync ~/.profile $dotfiles
echo ""
echo "Finished. Don't forget to commit your changes!"
echo ""
