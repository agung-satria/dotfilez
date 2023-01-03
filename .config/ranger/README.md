# Dependencies:
```sh
sudo pacman -S ranger ueberzug
sudo pacman -S perl-image-exiftool ffmpegthumbnailer lynx trash-cli zathura mupdf zathura-pdf-mupdf
sudo apt install libimage-exiftool-perl ffmpegthumbnailer lynx trash-cli zathura mupdf
```

## Install
copy everything in this folder to ~/.config/ranger, except plugins directory
because plugin is built and copied by git clone:

```sh
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
```
ranger_devicons (plugin) : github repo (just make install/make uninstall)
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
