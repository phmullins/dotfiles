################################################################################################
# Custom Apple OS X .bash_profile
# By Patrick H. Mullins, pmullins11@mac.com, @phmullins
# Grab the latest version at https://github.com/phmullins/dotfiles/blob/master/OSX/.bash_profile
################################################################################################

###############################################################################
# General Settings
###############################################################################

## Default Editor
export EDITOR='atom'

## Custom $PATH with extra locations
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/go/libexec/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH

## Path to make coreutils man pages accessible
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

## Location of Ansible host file
export ANSIBLE_HOSTS=/Users/pmullins/.ansible/hosts

## Customize the prompt
## New prompt will look like this: [08:02 PM][~/Downloads]
export PS1="[\D{%I:%M %p}][\w] "

## Autocorrect typos in path names when using `cd`
shopt -s cdspell

## Homebrew
export HOMEBREW_NO_EMOJI='0'
export HOMEBREW_INSTALL_BADGE=🎃

## Opt out of Homebrew's analytics
export HOMEBREW_NO_ANALYTICS=1

## Reload .bash_profile to enable changes
alias reload='source ~/.bash_profile'

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias nuke='sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* "delete from LSQuarantineEvent"'

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# Lock the screen (when going AFK)
alias later="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

###############################################################################
# History
###############################################################################

## Set history length via HISTSIZE and HISTFILESIZE
export HISTSIZE=1000
export HISTFILESIZE=1000

## Don't put duplicate lines in the history
HISTCONTROL=ignoreboth

## Add timestamp to history file
export HISTTIMEFORMAT="%F %T "

## Append to history. Don't overwrite
shopt -s histappend

## Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help:jrnl *"

## Keep track of changes made using the defaults write command
PROMPT_COMMAND='echo "$(history 1 | grep "defaults write")" | sed '/^$/d' >> ~/Documents/defaults-write.txt'

###############################################################################
# Aliases
###############################################################################

## Useful commands
alias rm='rm -I --preserve-root'
alias cp='cp -i'
alias mv='mv -i'
alias l='ls --color=auto'
alias ls='ls -lar --color=auto'
alias ll='ls -a --color=auto'
alias la='ls -A --color=auto'
alias lsh='ls -ld .??*'
alias grep='grep --ignore-case --color=auto -n'
alias fgrep='fgrep --ignore-case --color=auto'
alias egrep='egrep --ignore-case --color=auto'
alias drives='df -h'
alias usage='du -h -d1'
alias c='clear'
alias do='docker'

## List Processes the Fuzzy Way
alias pss='ps aux | fzy -l 20'

## Create parent and child directories if not present
alias mkdir='mkdir -pv'

## Colorize diff output. Requires colordiff be installed
alias diff='colordiff'

## Makes moving around the CLI a little easier
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

## Move to /working/websites folder
alias web="cd /Users/pmullins/Documents/Websites"

## Move to the Downloads folder
alias dow="cd ~/Downloads"
alias doc="cd ~/Documents"
alias dev="cd ~/Documents/Development"

## Ansible aliases
alias an='ansible'
alias ap='ansible-playbook'

## Check for Homebrew updates
alias update='brew update && brew upgrade && brew cleanup && brew cask cleanup'

## Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

## Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Enable/Disable Spotlight
alias spoton="sudo mdutil -a -i on"
alias spotoff="sudo mdutil -a -i off"

## Load SSH key in SSH Agent
alias sshload="ssh-add ~/.ssh/id_rsa"
alias arkhamcon="ssh -i ~/.ssh/LightsailDefaultPrivateKey.pem ubuntu@54.152.56.3"

## Search list of servers
alias dst="cat ~/Work/server_list.txt | grep "

## Launch the Swift REPL
alias swift="xcrun swift"

## Extract tar file
alias untar='tar -zxvf'

## Generate random 20 character password
alias getpass="openssl rand -base64 20"

###############################################################################
# Aliases - Networking Commands
###############################################################################

## Show local IP on en0
alias localip='ifconfig en0 | grep --word-regexp inet | awk "{print $2}"'

## Show public ip
alias ippub="dig +short myip.opendns.com @resolver1.opendns.com"

## Flush DNS cache (See: http://support.apple.com/kb/ht5343)
alias flushdns='sudo killall -HUP mDNSResponder'

## Limit Ping to 5 ECHO_REQUEST packets
alias ping='ping -c 5'

## Fast Ping limited to 5 ECHO_REQUEST packets
alias fastping='ping -c 100 -s.2 -c 5'

## Show open ports
alias ports='lsof -i -P | grep -i "listen"'

## wget with resume
alias wget='wget -c'

## Speedtest
alias speed='speedtest-cli --server 2406 --simple'

###############################################################################
# Functions
###############################################################################

## Copy dotfiles into Git repository
function updatedot {
  cp /Users/pmullins/.bash_profile /Users/pmullins/Documents/Development/desktop/macOS/macos_dotfiles/macOS/
}

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
