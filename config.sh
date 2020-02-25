#!/bin/bash
set -x

DOTFILES_ROOT=${0%/*}
DOTFILES_ROOT=$(echo `cd $DOTFILES_ROOT 2>/dev/null && pwd` || echo $DOTFILES_ROOT)

echo $DOTFILES_ROOT