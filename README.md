# Manjaro-Linux-Personal-Config
This is repo, that contains all files, and scripts needed to perform a semi-full customization of Manjaro Linux

Only thing you need to have installed on your system is git to clone this repository. Everything else is downloaded and installed automatically.

First you need to change directory to Manjaro-Linux-Personal-Config, and run setup.sh.
After installation you will be prompted to reboot your computer. Do that, and login back, but into i3.
DO NOT autocreate config file (press Esc on pop-up after logging in).
Then run terminal with Alt+Enter, change directory to Manjaro-Linux-Personal-Config, and run i3config.sh.

Changes rundown:
	1. Packages installed:

			yay

			rofi

			vim

			dmenu

			arandr
	
			feh
	
			xorg-xbacklight

			google-chrome

			vlc

			spotify

			mc

			tree

			lxappearance

			htop

			neofetch

			flameshot

			tmux
		
			xprop
			
			thunderbird

	2. Changes in Workspaces:

			Workspace 1 named "1: Browser", Google Chrome runs natively in this workspace

			Wrokspace 2 named "2: Terminal", Gnome terminal runs natively in this workspace

			Wrokspace 3 named "3: Files", Nautilus runs natively in this workspace

			Wrokspace 4 named "4: Settings"

			Wrokspace 5-8 named "5-8: Workspace"

			Wrokspace 9 named "9: Media", vlc and Spotify run natively in this workspace

			Wrokspace 10 named "10: htop"

	3. Custom shortcuts:

			$mod+Shift+Space - run rofi (also bound to Thinkpad F10 Search button)

			$mod+Shift+H - open i3wm user guide in Chrome

			$mod+Shift+X - locks screen with i3lock
	
			$mod+Shift+Delete - shutdown now

			PrintScreen - flameshot full screenshot, saved to /home/XXX/Pictures

	4. i3wm and i3bar colors match Thinkpad and Simply Circles color scheme (white/gray/black/red)

	5. i3status contains:

			WLAN info - quality, SSID, LAN IP

			Ethernet info - LAN IP, interface speed

			Battery 0 - status (FULL - full, CHR - charging, DCHR - discharging, EPT - empty), percentage (relative to last full load, not design capacity), current consumption in Watts

			Battery 1 - same as Battery 0

			CPU load percentage

			RAM used percentage

			Local time and date

			Media keys (volume, mute, mic mute, brightness, WLAN off) work as intended

			Touchpad tap works, naturall scrolling with two fingers
			
			

Enjoy your i3!

Themes credits (also here you can download latest versions):

GTK Theme Simply Circles: https://www.gnome-look.org/p/1308970/

Icon Theme Simply Circles Icons: https://www.gnome-look.org/p/1277095/

Cursor Fossa Cursors: https://www.gnome-look.org/p/1377483/
