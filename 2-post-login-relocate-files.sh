#! /bin/bash

mv .alacritty.toml .bash_aliases .bashrc .general-settings.txt themes.sh config-nvim.sh shortcuts.kksrc ~/

mv nftables.conf /etc/nftables.conf

sudo nft -f /etc/nftables.conf

mkdir .config/i3status

mv sway/i3status.conf ~/.config/i3status/config

mv nvim ~/.config/nvim

mv sway ~/.config/sway

mv wofi ~/.config/wofi

sudo mkdir -p /etc/X11/xorg.conf.d

sudo mv touchpad-tap.conf /etc/X11/xorg.conf.d/touchpad-tap.conf

sudo mv 00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf

mkdir -p ~/.config/mpv

mv mpv.conf ~/.config/mpv/mpv.conf

sudo mv Courier\ Prime.ttf JMH\ Typewriter\ mono.ttf /usr/share/fonts/

##Ranger
ranger --copy-config=all

##Fastfetch
fastfetch --gen-config

mkdir -p ~/Projects ~/Unzip ~/Learn ~/Write ~/Backup

cd .. && rm -rf arch-i3-custom-config-files

exit 0
