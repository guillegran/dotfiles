#!/bin/sh

# set keyboard layout
setxkbmap -layout es -option caps:swapescape

# merge in Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# set cursor theme
xsetroot -cursor_name left_ptr

# start bspwm
sxhkd &
exec bspwm

