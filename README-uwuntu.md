# Post-Install (ubuntu 22.04 LTS minimal install)

```sh
sudo apt-get update && sudo apt-get upgrade -y
```

# Install Brave-Browser

```sh
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
```

# Remove Firefox Snap

```sh
sudo snap remove firefox
```

# Some Dependencies

```sh
sudo apt install git wget python3-pip nodejs npm yad ripgrep alacritty tmux tmuxinator fd-find fzf gnome-tweaks xclip tree htop rofi pulsemixer arandr grabc
cd <fd find> binary, mv fdfinf fd
```

# Suckless Dependencies

```sh
sudo apt-get install build-essential libx11-dev libxinerama-dev sharutils suckless-tools libxft-dev libx11-xcb1 libx11-xcb-dev libxcb-res0-dev sudo libexif-dev libimlib2-dev libharfbuzz-dev fonts-symbola hsetroot maim flameshot dunst libnotify-bin calcurse gpick bc

Master build, the current config is in this repo
git clone https://github.com/agung-satria/dwm-6.3.git
(actually all the suckless program  is already in this repo)
```

# Cinnamon Desktop Environment

```sh
sudo apt install cinnamon-desktop-environment cinnamon
sudo apt install dolphin konsole gwenview ark (Optional)
sudo apt install breeze-gtk-theme breeze-icon-theme (dependencies for dolphin)
sudo apt install dunst libnotify-bin
sudo apt install use 'lowbatnotif' for battery warning (like dwm)
```

### Cinnamon themes:

```sh
System Settings > Appearance > Themes > Add/Removes "Ubuntu-touch" and "Adapta-Nokto"
```

# Neovim config

Read my [nvim-config](https://github.com/agung-satria/nvimnew.git):

```sh
https://github.com/agung-satria/nvimnew.git
```

# Install Microsoft Font

```sh
sudo apt install ttf-mscorefonts-installer
```

# Media Player

```sh
sudo apt install mpv mpc mpd ncmpcpp
```

# Ranger File Manager

```sh
pip install ranger-fm ueberzug
sudo apt install libimage-exiftool-perl ffmpegthumbnailer mlocate findutils fzf
(dragon/drag-and-drop is `bin` directory, move it to $PATH)
fzf guide:
https://github.com/gotbletu/shownotes/blob/master/ranger_file_locate_fzf.md
```

cp everything inside dotconfig/ranger to ~/.config/ranger
(except plugin directory)

```sh
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
```

# lf (fastest alternative to Ranger)

```sh
read the README in config/lf/README.md
```

# Applications and utilities (personal references)

```sh
sudo apt install gimp inkscape shotcut libreoffice
pip install spotdl
```

# Install Gnome-Extensions

```sh
sudo apt-get install chrome-gnome-shell
sudo apt install gnome-shell-extension-manager (application)
```

Install [Gnome-Shell-Extension](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep?hl=id)

- Dash to Panel
- Color picker
- Coverflow Alt-Tab (Recomended)
- Caffeine
- Impatience (Recomended)
- Emoji selector
- Clipboard indicator

# Custom Gnome Shortcuts

```sh
st -g 95x25
st -g 95x25 -e ncmpcpp
st -g 95x25 -e gotop
st -g 95x25 -e ranger
st -g 95x25 -e lfub
st -g 95x25 -e pulsemixer
tabbed -r 2 st -w ''
tabbed -r 2 st -w '' -e tmux
mpc -p 6601 toggle
mpc -p 6601 prev
mpc -p 6601 seek 0%
mpc -p 6601 next
mpc -p 6601 repeat
mpc -p 6601 random
mpc -p 6601 seek -5
mpc -p 6601 seek -30
mpc -p 6601 seek +5
mpc -p 6601 seek +30
brave-browser
brave-browser --incognito
google-chrome
google-chrome --incognito
```

> That's it! Don't rice too much!

