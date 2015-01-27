###############################################################################
# .bash_profile setup                                                         #
###############################################################################

# Custom $PATH with extra locations.
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/go/libexec/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH

# Path to make coreutils man pages accessible.
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Location of Ansible host file
export ANSIBLE_HOSTS=/Users/pmullins/Ansible/ansible_hosts

# Customize the prompt
# New prompt will look like this: [08:02 PM][~/Downloads]
export PS1="[\D{%I:%M %p}][\w] "

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
# Aliases                                                                       #
###############################################################################

# Useful commands
# alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias c='clear'
alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'
alias lsh='ls -ld .??*'
alias drives="df -h"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Makes moving around the CLI a little easier
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Ansible aliases.
alias an='ansible'
alias ap='ansible-playbook'

# Easy access to Dropbox folder
alias dbx="cd ~/Dropbox"

# Check for OS X and Homebrew updates. 
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Load SSH key in SSH Agent
alias sshload="ssh-add ~/.ssh/pmullins"

# Show public ip
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"

# Flush DNS cache (See: http://support.apple.com/kb/ht5343).
alias flush-dns='sudo killall -HUP mDNSResponder'

# Search list of servers
alias dst="cat ~/Dropbox/Work/server_list.txt | grep "

# Launch the Swift REPL
alias swift="xcrun swift"

source /Users/pmullins/.iterm2_shell_integration.bash