#!/bin/bash

clear

# Change the working directory to user's home
cd $HOME

# Create $HOME/myScripts directory if it doesn't exist
if [ ! -d $HOME/myScripts ]; then
    mkdir -pv $HOME/myScripts
fi

# Change the working directory to the $HOME/myScripts directory
cd $HOME/myScripts

# Delete any leftover files from previous runs.
if [ -d pihole.regex ]; then
    rm -R pihole.regex
fi

# Make user input case insensitive
shopt -s nocasematch

# Get the user input
echo -e "Please choose an option:\\n\\n[A]dd or [R]emove the RegEx blacklist filters: "
read myChoice
if [ "$myChoice" == "A" ]; then
    echo -e "Adding the custom RegEx filters to Pi-hole.\\n"
    sleep 3
    /usr/bin/curl -sSl 'https://raw.githubusercontent.com/slyfox1186/pihole.regex/main/scripts/install-regex-blacklist.py' | sudo /usr/bin/python3
elif [ "$myChoice" == "R" ]; then
    echo -e "Removing the custom RegEx filters from Pi-hole.\\n"
    sleep 3
    /usr/bin/curl -sSl 'https://raw.githubusercontent.com/slyfox1186/pihole.regex/main/scripts/uninstall-regex-blacklist.py' | sudo /usr/bin/python3
else
    echo -e "Syntax failure!\\nYou must input either the letter 'A' or 'R'\\nTry running the commands again."
    exit 1
fi
