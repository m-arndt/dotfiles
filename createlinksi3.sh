#!/bin/bash

#ln -b -s /path/to/file /path/to/symlink

SCRIPT=$(readlink -f $0)

#exec $(dirname "$SCRIPT")/createessentiallinks.sh

ln -v -b -s $(dirname "$SCRIPT")/ActualBackup/.config/i3/config ~/.config/i3/config
ln -v -b -s $(dirname "$SCRIPT")/ActualBackup/.config/blocksi3/volume-pulseaudio.sh ~/.config/blocksi3/volume-pulseaudio.sh
ln -v -b -s $(dirname "$SCRIPT")/ActualBackup/.i3blocks.conf ~/.i3blocks.conf
