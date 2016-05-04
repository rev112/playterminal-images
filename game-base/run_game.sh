#!/bin/bash

trap '' 2
pkill -f "$GAME_BINARY"
reset
$GAME_BINARY
echo -ne "\nPress [ENTER]..."
read

