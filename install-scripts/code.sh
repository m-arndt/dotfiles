#!/bin/bash
set -x

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

cat $SCRIPT_DIR/resources/vscode-extensions | while read p; do
  code --install-extension $p
done
