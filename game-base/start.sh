#!/bin/bash

# Print the greeting
cat /.box/greeting 2> /dev/null

# Display the bold prompt
bold=$(tput bold)
normal=$(tput sgr0)
echo "${bold}Press ENTER to start hacking...${normal}"

# Wait for ENTER
trap '' 2  # mock SIGINT on CTRL+C
read
trap 2  # enable SIGINT

while true; do
    su box
done
