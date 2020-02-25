#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

sudo apt update
sudo apt install zsh fonts-font-awesome

$SCRIPT_DIR/zsh-config.sh
