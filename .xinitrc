#!/bin/sh

# set keyboard layout
setxkbmap -layout es -option caps:swapescape

# merge in Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# set wallpaper
gwal

# start bspwm
sxhkd &
exec bspwm
