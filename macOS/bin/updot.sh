#!/usr/bin/env bash
# A script that Updates all of my DOT files.
# by Patrick H. Mullins (patrick@arkmail.net)
# Created 2018-09-09 @ 08:24 AM. | Updated 2018-12-30 @ 01:08 PM.

echo "Copying updated DOT files to the Git repo....."
rsync ~/bin/* ~/Development/desktop/macOS/macos_dotfiles/macOS/bin
rsync ~/.aliases ~/Development/desktop/macOS/macos_dotfiles/macOS
rsync ~/.ansible.cfg ~/Development/desktop/macOS/macos_dotfiles/macOS
rsync ~/.bash_profile ~/Development/desktop/macOS/macos_dotfiles/macOS
rsync ~/.dircolors ~/Development/desktop/macOS/macos_dotfiles/macOS
rsync ~/.exports ~/Development/desktop/macOS/macos_dotfiles/macOS
rsync ~/.gitconfig ~/Development/desktop/macOS/macos_dotfiles/macOS
rsync ~/.hushlogin ~/Development/desktop/macOS/macos_dotfiles/macOS
rsync ~/.profile ~/Development/desktop/macOS/macos_dotfiles/macOS
echo "All done. Make sure you push these changes to GitHub!"