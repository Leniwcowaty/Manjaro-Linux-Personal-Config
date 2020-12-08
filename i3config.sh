#!/bin/bash
# i3 configuration script for Lenovo Thinkpad T460s
# Do not run this script as superuser (sudo)

user="orlow" # your user name
pictures="Obrazy" # if you are using different name for /home/Pictures

echo "Copying configuration files and wallpapers"

cp ./i3config/i3config /home/$user/.config/i3/config
cp ./i3config/i3statusconfig /home/$user/.config/i3status/config
cp ./i3config/wallpaper.png /home/$user/$pictures/wallpaper.png
cp ./i3config/lock_screen.png /home/$user/$pictures/lock_screen.png

echo "Done. Your Mod key is Win key. Restart your i3 session with Win+Shift+R"
