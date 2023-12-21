#!/bin/sh

# set the wallpaper
xwallpaper --zoom  ~/pictures/backgrounds/wall.jpg &

# launch polybar
$HOME/.config/polybar/launch.sh &

# window compositor
xcompmgr &

# keybindings daemon
sxhkd &

# notification daemon
dunst &

# speed up keyboard
xset r rate 300 50 &

# blue light filter
redshift &

exec bspwm > /dev/null 2>&1
