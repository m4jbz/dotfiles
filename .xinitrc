while true; do
	/bin/sh ~/.config/dwm/autostart.sh &
	/bin/sh ~/.local/scripts/battery-status.sh &
    # Log stderror to a file
    dwm 2> ~/.dwm.log
done

pulseaudio --start
exec dwm
exec slstatus 
xrandr -s 1366x768
