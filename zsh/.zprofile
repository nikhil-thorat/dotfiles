if [[ -z $DISPLAY ]] && [[ $(tty) == /dev/tty1 ]]; then
	exec uwsm start hyprland.desktop
fi


# Added by Antigravity CLI installer
export PATH="/home/nikhil/.local/bin:$PATH"
