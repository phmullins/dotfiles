   #!/bin/sh
   
IFS=:
set $LS_COLORS
for C in $*
do
    IFS='='
    set $C
    echo -e "\033[$2m$1\033[00m"
done