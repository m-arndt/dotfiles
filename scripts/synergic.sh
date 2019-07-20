#!/bin/sh

. /etc/default/keyboard
synergyc $1
setxkbmap $XKBLAYOUT -option "$XKBOPTIONS" -model "$XKBMODEL" \
			     -variant "$XKBVARIANT"
