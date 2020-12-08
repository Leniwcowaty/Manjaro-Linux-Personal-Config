#!/bin/bash
# Script for configuration of Manjaro Linux Gnome edition with I3 Window Manager
# Notice - you can't run this script as superuser (sudo)
# But several times you will be prompted about sudo password

user="orlow"

echo "Creating configuration folder in $user home directory"

cd /home/$user
mkdir ConfigFiles
cd ./ConfigFiles

echo "Downloading git and base-devel"

sudo pacman -S base-devel

sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $user:$user ./yay-git

cd yay-git ; makepkg -si

echo "Updating your system and packages"

yay

echo "Installing I3 and necessary applications"

yay -S i3 rofi vim dmenu arandr feh xbacklight google-chrome vlc spotify mc tree

echo "Done, reboot now, log into I3 window manager and run i3config.sh"
echo "After logging into I3 DO NOT autocreate config file (press Esc on pop-up window)"
