# System Dot Files
Dot files for current linux configuration. This repo contains the following configurations
- i3wm
- i3bar
- i3status
- Compton
- Dunst
- Xresources
- various scripts

Complementary installed software includes:
- pywal
- i3lock
- feh
- URxvt
- dmenu
- neofetch

## Configuration Notes
### Colors
- Set from pywal
	- Puts color theme into xrdb
- Colours are pulled from xrdb and set globally from within the i3 config
	- dunst colours configured through commandline arguments, restarted on i3 restart
	- Script sync_status.sh syncs i3 colours with i3status
	- i3bar colours set in bar section of i3 config
### Eye Candy
- Transparency handled through Compton
### Usability
- Notifications handled through dunst
- Volume change handled by change_volume.sh
	- Pulseaudio changes volume
	- dunstify sends notification
	- sound sent through canberra-gtk-play
- Brightness change handled by change_brightness.sh
	- xbacklight changes brightness
	- dunstify sends notification
	- sound sent through canberra-gtk-play
- Locking is done with i3lock and xss-lock
- polkit-gnome used as authentication agent
### Navigation
- Navigation keys modified to resemble vim keys


