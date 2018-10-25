#!/bin/bash

#$(dirname "$SCRIPT")/installzsh.sh

sudo apt install tmux

ln -v -b -s $(dirname $(realpath "$0"))/Config/.tmux.conf ~/.tmux.conf

