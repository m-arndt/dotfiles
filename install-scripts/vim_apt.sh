#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

sudo apt update
sudo apt install vim-gtk3

$SCRIPT_DIR/vim-config.sh
