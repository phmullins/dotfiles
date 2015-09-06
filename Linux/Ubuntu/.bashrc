################################################################################################
# Custom Linux Debian/Ubuntu .bashrc                                 
# By Patrick H. Mullins, pmullins11@mac.com, @phmullins
# Grab the latest version at https://github.com/phmullins/dotfiles/blob/master/Debian/.bashrc
################################################################################################

###############################################################################
# History                                                                     #
###############################################################################

# Set history length via HISTSIZE and HISTFILESIZE.
export HISTSIZE=10000
export HISTFILESIZE=10000

# Dont put duplicate lines in the history.
HISTCONTROL=ignoreboth

# Add timestamp to history file.
export HISTTIMEFORMAT="%F %T "

# Make some commands not show up in history.
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# Append to history. Don't overwrite.
shopt -s histappend

###############################################################################
# Aliases                                                                     #
###############################################################################

# Useful commands.
alias vi='vim'
alias rm='rm -I --preserve-root'
alias cp='cp -i'
alias mv='mv -i'
alias l='ls -CF --color=auto'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias c="clear"
alias drives="df -h"

# Source .bash_profile
# alias rls=’. ~/.bashrc’

# Search processes
alias psg='ps -ef | grep'

# Search for installed apps
alias isthere="dpkg --get-selections | grep "

# Makes moving around the CLI a little easier.
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# That space is so hard to get in there. :-)
alias cd..=’cd ..’

# Become root
alias root='sudo su -'

# Run apt using sudo and don't ask for confirmations
alias apt-get='sudo apt-get -y'

# Update and upgrade using one command. 
alias update='sudo apt-get -y update && sudo apt-get -y upgrade'

# Create parent and child directories if not present.
alias mkdir='mkdir -pv'

# Cover your tracks
alias purge='history -c'

# Extract tar file
alias untar='tar -zxvf'

###############################################################################
# Aliases - Networking Commands
###############################################################################

# Limit Ping to 5 ECHO_REQUEST packets.
alias ping='ping -c 5'

# Fast Ping limited to 5 ECHO_REQUEST packets.
alias fastping='ping -c 100 -s.2 -c 5'

# Show open ports.
alias ports='netstat -atp | grep -i "listen"'

# wget with resume.
alias wget='wget -c'

###############################################################################
# System                                                                      #
###############################################################################

# What system am I on?
alias machine="echo You are logged in to: `uname -a | cut -f2 -d' '`"

# Show free memory in human readable format.
alias meminfo='free -h -t'

# Display the operating system name and release number.
alias getos='lsb_release -a'

# Get processor information.
alias getcpu='lscpu'

# Autocorrect typos in path names when using `cd`.
shopt -s cdspell