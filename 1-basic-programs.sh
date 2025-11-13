#! bin/bash

pacman -S intel-ucode networkmanager firefox discord code thunderbird wpa_supplicant wireless_tools netctl dialog fastfetch htop glances zip unzip numlockx base-devel iwd ntfs-3g dhcpcd picom alacritty pcmanfm krita gparted gnome-screenshot gnome-disk-utility cheese alsa-utils alsa-plugins pulseaudio pulseaudio-alsa pulseaudio-jack feh nodejs npm tmux xclip unrar connman ranger w3m locate p7zip meld tree rkhunter vlc mpv yt-dlp streamlink mariadb openssh libreoffice nftables tlp flameshot qt5-imageformats noto-fonts noto-fonts-cjk noto-fonts-emoji vlc-plugin-ffmpeg bluez blueman i3status sway swaybg swaylock swayidle xorg-xwayland wl-clipboard grim slurp wofi waybar mako brightnessctl plasma ddcutil featherpad nwg-look wlsunset #vlc-plugins-all ttf-jigmo

systemctl enable dhcpcd

systemctl enable NetworkManager

systemctl enable nftables

systemctl enable tlp.service

#systemctl enable sddm

##Ranger
ranger --copy-config=all

##Fastfetch
fastfetch --gen-config

#power management and buttons
echo HandlePowerKey=ignore >> /etc/systemd/logind.conf
echo HandleSuspendKey=ignore >> /etc/systemd/logind.conf
echo HandleSuspendKeyLongPress=ignore >> /etc/systemd/logind.conf
echo HandleHibernateKey=ignore >> /etc/systemd/logind.conf
echo HandleHibernateKeyLongPress=ignore >> /etc/systemd/logind.conf
echo HandleLidSwitch=ignore >> /etc/systemd/logind.conf
echo HandleLidSwitchExternalPower=ignore >> /etc/systemd/logind.conf
echo HandleLidSwitchDocked=ignore >> /etc/systemd/logind.conf

exit 0
