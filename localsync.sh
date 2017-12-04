#!/bin/bash

rsync -au ~/.vimrc ~/Backup/.vimrc
rsync -au ~/Backup/.vimrc ~/.vimrc

rsync -au ~/.bashrc ~/Backup/.bashrc
rsync -au ~/Backup/.bashrc ~/.bashrc

rsync -au ~/.vim/ ~/Backup/.vim/
rsync -au ~/Backup/.vim/ ~/.vim/

rsync -au ~/.config/i3/config ~/Backup/.config/i3/config
rsync -au ~/Backup/.config/i3/config ~/.config/i3/config

rsync -au ~/.bash_aliases ~/Backup/.bash_aliases
rsync -au ~/Backup/.bash_aliases ~/.bash_aliases
