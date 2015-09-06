###############################################################################
# CentOS .bash_profile                                                        #
###############################################################################

# Load aliases and functions from .bashrc
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/bin

# Customize the prompt
# New prompt will look like this: [08:02 PM][~/Downloads]
export PS1="[\D{%I:%M %p}][\w] "