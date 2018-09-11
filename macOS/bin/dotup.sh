#!/usr/bin/env bash
# A script that Updates all of my DOT files.
# by Patrick H. Mullins (patrick@arkhamtech.net)
# Created 2018-09-09 @ 08:24 AM.

echo "Copying updated DOT files to the Git repo....."
rsync ~/bin/* ~/Documents/development/desktop/macOS/macos_dotfiles/macOS/bin
rsync ~/.aliases ~/Documents/development/desktop/macOS/macos_dotfiles/macOS
rsync ~/.ansible.cfg ~/Documents/development/desktop/macOS/macos_dotfiles/macOS
rsync ~/.bash_profile ~/Documents/development/desktop/macOS/macos_dotfiles/macOS
rsync ~/.dircolors ~/Documents/development/desktop/macOS/macos_dotfiles/macOS
rsync ~/.exports ~/Documents/development/desktop/macOS/macos_dotfiles/macOS
rsync ~/.gitconfig ~/Documents/development/desktop/macOS/macos_dotfiles/macOS
rsync ~/.hushlogin ~/Documents/development/desktop/macOS/macos_dotfiles/macOS
rsync ~/.profile ~/Documents/development/desktop/macOS/macos_dotfiles/macOS
echo "All done. Make sure you push these changes to GitHub!"