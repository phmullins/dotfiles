## Useful commands.

alias ls="ls --color=auto"
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias vi="vim"
alias rm="rm -I --preserve-root"
alias cp="cp -i"
alias mv="mv -i"
alias ll="ls -lA --color=auto"
alias c="clear"
alias df="df -h"
alias mkdir="mkdir -pv"
alias untar="tar -zxvf"
alias purge="history -c"

# Search processes
alias deamon="ps -ef | grep "

# Search for installed apps
alias isthere="dpkg --get-selections | grep "

# Makes moving around the CLI a little easier.
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Become root
alias root="sudo su -"

# Run apt using sudo and don't ask for confirmations
alias apt="sudo apt -y"

# Update and upgrade using one command.
alias update="sudo apt update -y && sudo apt upgrade -y"

## Networking Commands

# Limit Ping to 5 ECHO_REQUEST packets.
alias ping="ping -c 5"

# Fast Ping limited to 5 ECHO_REQUEST packets.
alias fastping="ping -c 100 -s.2 -c 5"

# Show open ports.
alias ports="netstat -at | grep -i 'listen'"

# wget with resume.
alias wget="wget -c"

## System Commands

# What system am I on?
alias whereami="echo You are logged in to: ' '"

# Show free memory in human readable format.
alias mem="free -o -h -t"

# Display the operating system name and release number.
alias getos="lsb_release -a"

# Get processor information.
alias getcpu="lscpu"

# Remove any unused packages
alias cleanup="sudo apt-get autoremove"

# Update the system and firmware
alias updateall="sudo apt update && sudo apt upgrade -y && sudo rpi-update && sudo reboot now"

# Update the system
alias update="sudo apt update && sudo apt upgrade -y"
