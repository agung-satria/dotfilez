#!/bin/zsh

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  # exec startx # for dwm
  Hyprland
fi
