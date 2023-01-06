# Dependencies:

```sh
sudo apt install python3 python3-pip
pip3 install ranger-fm
sudo apt install libimage-exiftool-perl ffmpegthumbnailer lynx trash-cli zathura mupdf
sudo dpkg -i ./bin/ueberzug_18.1.9-2_amd64.deb
sudo apt install python3-attr (depends, see the warning)
sudo apt --fix-broken Install
which ueberzug 
```

## Install
copy everything in this folder to ~/.config/ranger, except 'plugins' directory
then clone the install the plugin (dev icon)

```sh
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
```
dragon (copy binary file to $PATH or build from source, google it)

## Mapping
* `f` New file (touch)
* `F` New folder (mkdir)
* `yy` Copy (yank)
* `dd` Cut
* `pp` Paste
* `r` Open with
* `S` Open terminal (st)
* `t` Open terminal (st)
* `R` Open "Recycle Bin" / trash-cli script (bin/sampah-cli)
* `ctrl-r` Open "Recycle Bin" / trash in nemo file manager
* `delete` Move to trash
* `shift+delete` Delete permanent (console remove)
* `D` Delete permanent (console remove)
* `space` Select file
* `V` Select all
* `ctrl-f` fzf_select (search)
* `ctrl-g` fzf_locate (search)
* `ctrl-b` Bulkrename
* `ctrl-o` Open with nvim
* `ctrl-d` Drag file (dragon)
* `X` tar -zxfv
* `zi` toggle preview image and file info
* `backspace` toggle hidden file (zh)
* `m<letter>` new bookmark
* `'<letter>` access bookmark

## Trash CLI
link: https://github.com/andreafrancia/trash-cli
Trash directory `~/.local/share/Trash`

```
trash-put: trash files and directories.
trash-empty: empty the trashcan(s).
trash-list: list trashed files.
trash-restore: restore a trashed file.
trash-rm: remove individual files from the trashcan.
```
