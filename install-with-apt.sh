#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))

$SCRIPT_DIR/install-scripts/bash-config.sh

$SCRIPT_DIR/install-scripts/tmux-apt.sh
$SCRIPT_DIR/install-scripts/vim-apt.sh
$SCRIPT_DIR/install-scripts/zsh-apt.sh