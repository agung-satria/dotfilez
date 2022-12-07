## auto start
lowbatnotif &
hsetroot -fill ~/.mygithub/uwuntu/wallpaper/landscape.jpg
xset r rate 300 50
xset s blank
xset s 240
natural-mouse-scroll-false.sh &
mpd &
dwmblocks &
nm-applet &
dunst &
snd_mint_login &
# picom --experimental-backends &
picom &
asb &

## session:
exec dwm
# exec i3
# exec cinnamon-session-cinnamon
# exec env GNOME_SHELL_SESSION_MODE=pop /usr/bin/gnome-session --session=pop

## notes:
# comment all autostart section if want to start CINNAMON or POP session
# run (uncomment) autostart section if want to start I3-WM or DWM session
# just edit base on your need
