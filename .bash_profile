###############################################################################
# .bash_profile setup                                                         #
###############################################################################

# Colors in the terminal
export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"\

# Keep track of changes made using the defaults write command
PROMPT_COMMAND='echo "$(history 1 | grep "defaults write")" | sed '/^$/d' >> ~/Documents/defaults-write.txt'

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

###############################################################################
# Alias                                                                       #
###############################################################################

# Useful commands
alias cls="clear"
alias ll="ls -la"
alias grep='grep --color=auto'

# Makes moving around the CLI a little easier
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Check for OS X and Homebrew updates. 
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"


