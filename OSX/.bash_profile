###############################################################################
# .bash_profile setup                                                         #
###############################################################################

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Change the prompt
export PS1=">[\w] "

# Colors in the terminal
export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"\
export HISTIGNORE="jrnl *"

# Keep track of changes made using the defaults write command
PROMPT_COMMAND='echo "$(history 1 | grep "defaults write")" | sed '/^$/d' >> ~/Documents/defaults-write.txt'

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

###############################################################################
# Alias                                                                       #
###############################################################################

# Useful commands
alias c='clear'
alias l='ls -lh'
alias ll='ls -lah'
alias lsh='ls -ld .??*'
alias grep='grep --color=auto'

# Makes moving around the CLI a little easier
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Easy access to Dropbox folder
alias dbx="cd ~/Dropbox"

# Check for OS X and Homebrew updates. 
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup'

# Recursively delete `.DS_Store` files
alias clean="find . -type f -name '*.DS_Store' -ls -delete"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Load SSH key in SSH Agent
alias sshload="ssh-add ~/.ssh/pmullins"

# Show public ip
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
