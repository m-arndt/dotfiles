#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

sudo apt update
sudo apt install tmux

$SCRIPT_DIR/tmux_config.sh
