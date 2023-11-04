while true; do
	/bin/sh ~/.local/suckless/dwm/autostart.sh &
	/bin/sh /opt/scripts/battery-status.sh &
    # Log stderror to a file
    dwm 2> ~/.dwm.log
done

exec dwm
exec sistatus 
xrandr -s 1366x768
