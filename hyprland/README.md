```sh
yay -S hyprland-bin
yay -S waybar-hyprland
yay -S hyprpaper-git (https://github.com/hyprwm/hyprpaper)
yay -S wlogout (powermenu)

sudo pacman -S kitty
sudo pacman -S pipewire wireplumber
sudo pacman -S wofi (pakai rofi juga bisa)

sudo pacman -S grim (screenshot utility for wayland) it already stored in $HOME/Pictures/
sudo pacman -S swappy (for area acreenshot [stored in ~/Pictures/screenshots])
sudo pacman -S wf-recorder (Screen recorder for wlroots-based)

sudo pacman -S pavucontrol
sudo pacman -S otf-font-awesome
sudo pacman -S bemenu-wayland (just use rofi)

sudo pacman -S swaylock (lockscreen like i3lock)
sudo pacman -S swaybg (just use hyprpaper)


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

for systray
sudo pacman -S libappindicator-gtk3
and export `XDG_CURRENT_DESKTOP=Unity`
to /etc/environment

Color picker:
yay -S hyprpicker-git (color picker)
https://github.com/hyprwm/hyprpicker
sudo pacman -S wl-clipboard
usage:
-f | --format=[fmt] specifies the output format (cmyk, hex, rgb, hsl, hsv)
-n | --no-fancy disables the "fancy" (aka. colored) outputting
-h | --help prints a help message
-a | --autocopy automatically copies the output to the clipboard (requires wl-clipboard)
`

cursor:?==============================================
https://wiki.archlinux.org/title/Cursor_themes

link download:
https://github.com/ful1e5/apple_cursor
https://github.com/ful1e5/apple_cursor/releases
tar file in usr/share/icons
https://github.com/swaywm/sway/wiki/GTK-3-settings-on-Wayland
set gsettings in hyprland.conf
set in ~/.config/gtk-3.0/settings.ini
'gtk-cursor-theme-name=macOS-BigSur'
reboot

nvim ~/.icons/default/index.theme
'
# This file is written by LXAppearance. Do not edit.
[Icon Theme]
Name=Default
Comment=Default Cursor Theme
Inherits=macOS-BigSur
'
ln -s /usr/share/icons/macOS-BigSur ~/.icons/default/cursors

set in LXAppearance if necessary
cursor:!==============================================
```
