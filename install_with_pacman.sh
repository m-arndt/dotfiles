#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))

$SCRIPT_DIR/install-scripts/bash_config.sh

#$SCRIPT_DIR/install-scripts/yay.sh

$SCRIPT_DIR/install-scripts/tmux_pacman.sh
$SCRIPT_DIR/install-scripts/vim_pacman.sh
$SCRIPT_DIR/install-scripts/zsh_pacman.sh
