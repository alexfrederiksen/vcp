#!/bin/bash

FILE_C=10;
ACTION_C=7;

print_help() {
    echo "Copies the current directory to the given one with intense logging.";
    echo "";
    echo "USAGE: ./vcp <destination>";
    echo "";
}
if [ "$#" -ne 1 ]; then
    echo "Invalid number of arguments.";
    print_help;
    exit;
fi

if [ "$1" == "--help" ]; then
    print_help;
    exit;
fi

src=".";
dst=$1;

tput setaf $ACTION_C;
echo "Preparing to copy:";

count=0;
tput setaf $FILE_C;
while read i; do
    echo "   $i";
    count=$((count+1));
done <<< $(find $src -type f)
echo "";
tput setaf $ACTION_C;
echo "   Total: $count files";
echo "";

printf "Is this ok? [y/N]: ";
read answer;
if [ "$answer" != "y" ] && [ "$answer" != "Y" ]; then
    echo "Aborting...";
    tput sgr0;
    exit;
fi

echo "";

i=0;
while read name; do
    i=$((i+1));
    cols=$(tput cols);
    body_width=$(( $cols-24-4 ));
    progress=$(( (100*$i)/$count ))
    printf "   $(tput setaf $ACTION_C)Copying (%4d/%4d): $(tput setaf $FILE_C)%-*s$(tput setaf $ACTION_C)%%%3s\n" $i $count $body_width "$name..." "$progress";
    cp --parent "$name" "$dst";
done <<< $(find $src -type f)

echo "";
echo "Done."; 

tput sgr0;








