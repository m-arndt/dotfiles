#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

sudo pacman -S i3 i3blocks rofi feh

$SCRIPT_DIR/i3_config.sh
