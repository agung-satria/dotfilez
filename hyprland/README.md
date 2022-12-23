```sh
yay -S hyprland-bin
sudo pacman -S kitty
sudo pacman -S pipewire wireplumber
sudo pacman -S wofi
sudo pacman -S grim (screenshot utility for wayland) it already stored in $HOME/Pictures/
sudo pacman -S pavucontrol
sudo pacman -S otf-font-awesome
sudo pacman -S bemenu-wayland (just use rofi)

sudo pacman -S swaylock (lockscreen like i3lock)
sudo pacman -S swaybg (just use hyprpaper)

yay -S hyprpaper-git (https://github.com/hyprwm/hyprpaper)
    yay -S xdg-desktop-portal-hyprland-git
(xdg-desktop-portal-wlr)

(belum)---------------------------------------------------
exec once this (.local/bin/exec-once):
#!/bin/bash
sleep 1
killall xdg-desktop-portal-hyprland
killall xdg-desktop-portal-wlr
killall xdg-desktop-portal
/usr/libexec/xdg-desktop-portal-hyprland &
sleep 2
/usr/lib/xdg-desktop-portal &
(belum)---------------------------------------------------

sudo pacman -S polkit-kde-agent
You can autostart it with
`exec-once=/usr/lib/polkit-kde-authentication-agent-1` (belum)

bar: waybar
yay -S waybar-hyprland
config: `~/.config/waybar`

for systray
sudo pacman -S libappindicator-gtk3
and export `XDG_CURRENT_DESKTOP=Unity`
to /etc/environment



yay -S hyprpicker-git (color picker)
https://github.com/hyprwm/hyprpicker
sudo pacman -S wl-clipboard
usage:
-f | --format=[fmt] specifies the output format (cmyk, hex, rgb, hsl, hsv)
-n | --no-fancy disables the "fancy" (aka. colored) outputting
-h | --help prints a help message
-a | --autocopy automatically copies the output to the clipboard (requires wl-clipboard)
`
```
