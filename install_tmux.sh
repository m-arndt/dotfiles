#!/bin/bash

#$(dirname "$SCRIPT")/installzsh.sh

sudo apt update
sudo apt install tmux

#ln -v -b -s $(dirname $(realpath "$0"))/Config/.tmux.conf ~/.tmux.conf
#ln -v -b -s -n $(dirname $(realpath "$0"))/.tmux ~/.tmux
#ln -v -b -s $(dirname $(realpath "$0"))/.tmux/.tmux.conf ~/.tmux.conf
ln -v -b -s $(dirname $(realpath "$0"))/Config/.tmux.conf.local ~/.tmux.conf.local

(cd ~; git clone https://github.com/gpakosz/.tmux.git; ln -s -f .tmux/.tmux.conf);

(cd ~; git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm);

