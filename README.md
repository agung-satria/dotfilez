# Arch linux stuff (suckless, script, config, apps, notes, etc)

## Dependencies!

```sh
sudo pacman -S base-devel xorg-server xorg-xinit libx11 libxinerama libxft webkit2gtk hsetroot xclip wget curl rsync bc tree nemo nemo-fileroller galculator fzf tmux ntfs-3g dunst libnotify maim rofi arandr pulsemixer vlc calcurse imagemagick zip unzip
sudo pacman -S pamixer light
sudo pacman -S ttf-joypixels ttf-font-awesome
sudo pacman -S mtpfs gvfs-mtp gvfs-gphoto2
```

## Change console font (make it bigger)

```sh
ls /usr/share/kbd/consolefonts
sudo pacman -S terminus-font
sudo nvim /etc/vconsole.conf
`FONT=ter-u32n.psf.gz`
reboot
```

## Install fonts

```sh
git clone https://github.com/agung-satria/fonts.git
mkdir ~/.fonts
copy font that required to `~/.fonts` directory
sudo fc-cache -fv
or
refont
```

## Install suckless software

```sh
sudo make install
```

## AUR helper (yay)

```sh
cd /tmp
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
```

## AUR packages

```sh
yay -S noto-color-emoji-fontconfig (color emoji!)
yay -S brave-bin
yay -S gotop
yay -S grabc
yay -S picom-pijulius-git (optional, just use picom)
yay -S ttf-ms-fonts
```

## Install tmux

```sh
See README in tmux directory
```

## Install zsh

```sh
See README in zsh directory
```

## Install ranger or lf file manager

```sh
See README in config/ranger directory
See README in config/lf directory
```

## Music player

```sh
sudo pacman -S mpc mpd ncmpcpp
cd ~/.mygithub/dotfilez/config
cp -R {mpd,ncmpcpp} ~/.config
```

## Default applications

```sh
Nemo 'xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search'
```

## Nemo preview

- Edit - Preferences - Preview
- `Only for files smaller than` set to 1GB

## Theming

```sh
sudo pacman -S papirus-icon-theme lxappearance
```

## Pacman character (ILoveCandy)

```sh
sudo nvim /etc/pacman.conf
```

on section 'Misc options'

- uncomment '#Color'
- add 'ILoveCandy' below '#VerbosePkgLists' line
- soo it will look like this

```
# Misc options
#UseSyslog
Color
#NoProgressBar
CheckSpace
#VerbosePkgLists
ILoveCandy
#ParallelDownloads = 5
```

## Install rofi

```sh
cd ~/.mygithub/dotfilez/config/rofi
mkdir ~/.config/rofi
cp -r * ~/.config/rofi
rofi-theme-selector
choose "config"
alt-a (to choose theme)
```

## Enable tap to Click

```sh
sudo cp /usr/share/X11/xorg.conf.d/40-libinput.conf /etc/X11/xorg.conf.d
sudo nvim /etc/X11/xorg.conf.d/40-libinput.conf
```

Add this section:

```sh
Section "InputClass"
	Identifier "devname"
	Driver "libinput"
	Option "Tapping" "on"
	Option "NaturalScrolling" "true"
EndSection
```

Restart DWM

## Disable power button

```
sudo nvim /etc/systemd/logind.conf
```

Set this value
`HandlePowerKey=ignore`
Reboot

## Install lockscreen

```sh
`https://github.com/Raymo111/i3lock-color` (yay -S i3lock-color)
`https://github.com/betterlockscreen/betterlockscreen` (build manual like on ubuntu)
```

## Pacman command

```sh
sudo pacman -Rsn $(pacman -Qdtq)
sudo pacman -Scc
sudo pacman -Rscnd <program>

```

## Command

```sh
`sudo timedatectl set-ntp true` set time automatically
```

## Mounting

```sh
mkdir ~/w10
lsblk
sudo mount /dev/nvme0n1p5 w10
sudo umount /dev/nvme0n1p5 ~/w10
```

nvme0n1p5 (data D windows)

## Speed up booting time

```sh
sudo nvim /etc/default/grub
set `GRUB_TIMEOUT=1` or `GRUB_TIMEOUT=0`
sudo grub-mkconfig -o /boot/grub/grub.cfg
```
