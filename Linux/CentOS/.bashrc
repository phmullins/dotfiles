###############################################################################
# Aliases                                                                     #
###############################################################################

# Useful commands
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias l='ls -CF --color=auto'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias c="clear"
alias drives="df -h"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Makes moving around the CLI a little easier
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Update packages
alias update='yum -y update'

# Become root
alias root='sudo su -'