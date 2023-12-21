#!/bin/bash

# update system
sudo pacman -Syu --noconfirm

# default directories
mkdir -p ~/.config
mkdir -p ~/.fonts
mkdir -p ~/pictures
mkdir -p ~/pictures/backgrounds
mkdir -p ~/pictures/screenshooter
mkdir -p ~/music
mkdir -p ~/templates
mkdir -p ~/downloads

# xorg server
sudo pacman -S xorg-server xorg-xinit xorg-setxkbmap xf86-video-amdgpu mesa lib32-mesa --noconfirm

# window manager
sudo pacman -S bspwm sxhkd --noconfirm

# primary programs
sudo pacman -S xwallpaper alacritty eza rofi xcompmgr unzip pipewire pamixer --noconfirm

# secondary programs
sudo pacman -S scrot polybar vim ufw redshift libnotify dunst papirus-icon-theme noto-fonts-emoji --noconfirm

# paru
cd ~/downloads
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
