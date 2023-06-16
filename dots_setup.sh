#!/bin/bash

echo "Setting up User Preferences............."

cp -r fuzzel /home/$USER/.config/
cp -r swappy /home/$USER/.config/
cp -r sway /home/$USER/.config/
cp -r swaylock /home/$USER/.config/
cp -r waybar /home/$USER/.config/
cp -r fonts /home/$USER/.local/share/
sync

mkdir -p -v /home/$USER/Pictures/Screenshots
mkdir /home/$USER/Downloads
mkdir /home/$USER/Documents
mkdir /home/$USER/.local/share/icons
mkdir /home/$USER/.wallpapers
mkdir /home/$USER/.icons
mkdir /home/$USER/.themes

cp -r wallpapers/ /home/$USER/.wallpapers/
unzip themes/Tokyonight-Dark-B.zip -d /home/$USER/.themes/
unzip icons/Cursor.zip -d /home/$USER/.icons/
tar -xf icons/papirus-icon-theme-yaru-folders.tar.xz -C /home/$USER/.icons/ Papirus
sync
ln -sf /home/$USER/.icons/Papirus /home/$USER/.local/share/icons/
ln -sf /home/$USER/.themes/Tokyonight-Dark-B/gtk-4.0 /home/$USER/.config/

cat bash_profile-append >> /home/$USER/.bash_profile


echo "A reboot is required to complete the setup."
