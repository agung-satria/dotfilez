<h1 align="center">My Arch Linux Setup</h1>
<p align="center">suckless, <a href="https://github.com/agung-satria/nvim" target="_blank">nvim</a>, script, config, apps, notes, etc</p>

![](suckless/screenshots/desktop-clean.png)
![](suckless/screenshots/desktop-dirty.png)
![](suckless/screenshots/desktop-layout.png)
![](suckless/screenshots/desktop-hyprland.png)

## Dependencies!

```sh
sudo pacman -S base-devel xorg-server xorg-xinit libx11 libxinerama libxft webkit2gtk
sudo pacman -S tmux fzf wget curl rsync tree imagemagick nano

sudo pacman -S dolphin konsole ark qt5ct

sudo pacman -S lxqt-policykit (for file manager, work with nemo and dolphin)
and then exec once 'lxqt-policykit-agent' at startup, dwm or hyprland: (to authenticate other partition in nemo file manager)

sudo pacman -S kde-cli-tools (to change default 'open with')
Edit /etc/environment as root
and add the line :
'
export QT_QPA_PLATFORMTHEME=qt5ct
export XDG_CURRENT_DESKTOP=Unity
'
and save
and edit qt5 theme qith QT5Settings

-----------------------------------------------------------
sudo pacman -S nemo nemo-fileroller font-manager lxqt-policykit-agent
sudo pacman -S maim xdotool wtype*
sudo pacman -S flameshot simplescreenrecorder
sudo pacman -S dunst libnotify calcurse bc nitrogen hsetroot pulsemixer xclip scrot
sudo pacman -S ttf-joypixels ttf-font-awesome
sudo pacman -S ntfs-3g mtpfs gvfs-mtp gvfs-gphoto2
sudo pacman -S rofi rofi-emoji rofi-calc arandr vlc galculator
sudo pacman -S zip unzip unrar gzip
sudo pacman -S pamixer light expac
sudo pacman -S firefox
sudo pacman -S zathura mupdf zathura-pdf-mupdf
```

## Autolock (Dependencies)

- i3lock-color (aur)
- xidlehook (aur)
- xautolock (repo)
- imagemagick (repo)
- scrot (repo)
- dunst (repo)
- libnotify (repo)

run `locker` in xinitrc, use `lock` to lock screen

## Change console font (make it bigger)

```sh
ls /usr/share/kbd/consolefonts
sudo pacman -S terminus-font
sudo echo "FONT=ter-u32n.psf.gz" >> /etc/vconsole.conf
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

- yay -S noto-color-emoji-fontconfig (color emoji!)
- yay -S brave-bin
- yay -S mirage (image viewer)
- yay -S gromit-mpx
- yay -S gotop
- yay -S grabc (sometimes not working)
- yay -S picom-jonaburg-git (for nice rounded corners) or
- yay -S picom-pijulius-git (for nice animation) or just 'picom' from repo
- yay -S ttf-ms-fonts
- yay -S colorpicker
- yay -S 7-zip

## Install tmux

See README in `tmux/README.md`

## Install zsh

See README in `zsh/README.md`

## Install ranger or lf file manager

See README in `.config/{ranger/README.md,../.config/lf/README.md}`

## Media player

```sh
sudo pacman -S mpc mpd ncmpcpp mpv
cp -R .config/{mpd,ncmpcpp,mpv} ~/.config
```

## Theming

```sh
sudo pacman -S lxappearance
sudo pacman -S papirus-icon-theme (tar is in dotfiles)
```

Install from file

- Extract the files in the _usr/share/icons_ and _usr/share/themes_ folder to each specified directory
- And change icon and theme using _lxappearance_

## Install rofi

Copy config file

```sh
cp -R .config/rofi ~/.config
```

Change rofi themes:

- Use `vr` (aliased to nvim ~/.config/rofi/config.rasi)
- Uncomment line 15 in _config.rasi_ to use [siduck](https://github.com/siduck/chadwm/tree/main/rofi) theme
- Change/uncomment last line/section to use other themes (windows11, launchpad, etc)

## Install eww

- Install [rust](https://rustup.rs/)
- Install [eww](https://elkowar.github.io/eww/eww.html)

## Default Application

- Check mime file type `xdg-mime query filetype <file>` ex: $_`xdg-mime query filetype wallpaper.png`_
- Check default app from mime filetype `xdg-mime query default <image/png>`
- Check default file manager `xdg-mime query default inode/directory`
- Set default app of file type `xdg-mime default <mirage.desktop> image/png`
<br/><br/>Sample from the docs:
- Set _**nemo**_ for file manager `xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search`
- set _**dolphin**_ for file manager `xdg-mime default org.kde.dolphin.desktop inode/directory application`

> *.desktop file is under _**/usr/share/applications**_ <br/>
> [Alternative way](https://www.youtube.com/watch?v=z3F0hTigMvU), edit the ~/.config/mimeapps.list file <br/>
> And check /usr/share/applications/mimeinfo.cache

## Nemo preview

- Edit - Preferences - Preview
- _Only for files smaller than_ set to 1GB

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

## Create a custom .desktop file with specific GTK THEME (ex: libreoffice)

- sudo cp /usr/share/applications/libreoffice-* ~/.local/share/applications/
- sudo chown agung:agung ~/.local/share/applications/*
- edit each file you want to specify gtk theme (nvim libreoffice-*)
- Modify the line starting with 'Exec=' to include 'GTK_THEME=Adwaita:Light' (you can change 'Adwaita:Light' with 'Decay-light' for example) and then the previous existing contents of the line. (So 'Exec=libreoffice --writer %U' would become "Exec=env GTK_THEME=Adwaita:Light libreoffice --writer %U" )
- Save and close. Now libreoffice has specific (not dark) GTK THEME

## Enable tap to Click

```sh
sudo cp /usr/share/X11/xorg.conf.d/40-libinput.conf /etc/X11/xorg.conf.d
sudo nvim /etc/X11/xorg.conf.d/40-libinput.conf
```

Add this section

```sh
# for touchpad
Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "Tapping" "on"
        Option "NaturalScrolling" "True"
EndSection

# for mouse
Section "InputClass"
        Identifier "libinput pointer catchall"
        MatchIsPointer "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "NaturalScrolling" "False"
EndSection
```

Then log off and on to apply.

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

## Command

```sh
sudo pacman -Rsn $(pacman -Qdtq)
sudo pacman -Scc
sudo pacman -Rscnd <program>

yay -Qm (list installed AUR packages )
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

- `sudo nvim /etc/default/grub`
- set _`GRUB_TIMEOUT=1`_ or _`GRUB_TIMEOUT=0`_
- `sudo grub-mkconfig -o /boot/grub/grub.cfg`
- reboot
