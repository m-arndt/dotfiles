#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

sudo pacman -S gvim

$SCRIPT_DIR/vim-config.sh
