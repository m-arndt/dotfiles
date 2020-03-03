#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

sudo pacman -S zsh ttf-font-awesome

$SCRIPT_DIR/zsh_config.sh
