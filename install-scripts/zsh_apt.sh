#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

sudo apt update
sudo apt install zsh

$SCRIPT_DIR/zsh_config.sh
