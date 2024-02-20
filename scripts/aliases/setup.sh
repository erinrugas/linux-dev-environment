#!/bin/bash

shopt -s expand_aliases

#make executable
echo "Make Executable File"
chmod +x debian-alias.sh
chmod +x laravel-alias.sh
chmod +x npm-alias.sh

CURR_DIR="$(pwd)"
BASHRC="$HOME/.bashrc"

echo "source $CURR_DIR/debian-alias.sh" >> $BASHRC
echo "source $CURR_DIR/laravel-alias.sh" >> $BASHRC
echo "source $CURR_DIR/npm-alias.sh" >> $BASHRC

source $BASHRC

echo "Successfully added aliases. Restart your Terminal"