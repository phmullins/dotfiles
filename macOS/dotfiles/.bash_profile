###############################################################################
# Ascii - begin
###############################################################################
echo "  ___  ______ _   __ _   _   ___  ___  ________ _____ _____  _   _ ";
echo " / _ \ | ___ \ | / /| | | | / _ \ |  \/  |_   _|  ___/  __ \| | | |";
echo "/ /_\ \| |_/ / |/ / | |_| |/ /_\ \| .  . | | | | |__ | /  \/| |_| |";
echo "|  _  ||    /|    \ |  _  ||  _  || |\/| | | | |  __|| |    |  _  |";
echo "| | | || |\ \| |\  \| | | || | | || |  | | | | | |___| \__/\| | | |";
echo "\_| |_/\_| \_\_| \_/\_| |_/\_| |_/\_|  |_/ \_/ \____/ \____/\_| |_/";
echo "                                                                   ";
echo "                                                                   ";
###############################################################################
# Ascii - end
###############################################################################

## Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

## Load the shell dotfiles, and then some:
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

## Custom $PATH with extra locations
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/go/libexec/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH

## Customize the prompt
## New prompt will look like this: [08:02 PM][~/Downloads]
TIME='[\D{%I:%M %p}]'
USER='[\u@\h]'
LOCATION='[\w] '
export PS1="$TIME$USER$LOCATION"

## Tell SSH how to access the gpg-agent 
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

##git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
#HOST='\033[02;36m\]\h'; HOST=' '$HOST
##TIME='\033[01;31m\]\t \033[01;32m\]'
#LOCATION=' \033[01;34m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
#BRANCH=' \033[00;33m\]$(git_branch)\[\033[00m\]\n\$ '
#PS1=$TIME$USER$HOST$LOCATION$BRANCH
##PS2='\[\033[01;36m\]>'

## Setting PATH for Python 3.6
## The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

## script /tmp/consoleOutput_$(whoami)_$(date +'%Y_%m_%d_%H_%M_%S_%N').txt ; exit

# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin

# ~/.dircolors/themefile
eval $(gdircolors ~/.dircolors/dircolors.arkham)


