#!/bin/zsh

export PATH="$PATH:$HOME/.local/bin:$HOME/.local/bin/statusbr:$HOME/bin"

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
