## auto start
dwmblocks &
lowbatnotif &
# hsetroot -cover ~/.dotfiles/.local/share/wallpapers/landscape.jpg
hsetroot -cover ~/.dotfiles/.local/share/wallpapers/supermoon.jpg
# hsetroot -cover ~/.dotfiles/.local/share/wallpapers/vxarnosz.jpg
xset r rate 300 50
xset s blank
xset s 600
natural-mouse-scroll-false &
mpd &
# flameshot &
nm-applet &
dunst &
# eww daemon &
# picom &
picom --experimental-backends &
# asb & #rc.local alternative
snd-logon &

## session:
exec dwm
# exec i3
# exec cinnamon-session-cinnamon
# exec env GNOME_SHELL_SESSION_MODE=pop /usr/bin/gnome-session --session=pop

## notes:
# comment all autostart section if want to start CINNAMON or POP session
# run (uncomment) autostart section if want to start I3-WM or DWM session
# just edit base on your need
