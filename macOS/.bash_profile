###############################################################################
# Ascii - begin
###############################################################################
echo "  ___  ______ _   __ _   _   ___  ___  ___";
echo " / _ \ | ___ \ | / /| | | | / _ \ |  \/  |";
echo "/ /_\ \| |_/ / |/ / | |_| |/ /_\ \| .  . |";
echo "|  _  ||    /|    \ |  _  ||  _  || |\/| |";
echo "| | | || |\ \| |\  \| | | || | | || |  | |";
echo "\_| |_/\_| \_\_| \_/\_| |_/\_| |_/\_|  |_/";
echo "                                          ";
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
export PS1="[\D{%I:%M %p}][\w] "

## Setting PATH for Python 3.6
## The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

