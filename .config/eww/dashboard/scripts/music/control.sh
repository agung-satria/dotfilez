#!/usr/bin/env bash

if [[ $1 == "prev" ]]; then
  # playerctl previous
  mpc -p 6601 prev
fi

if [[ $1 == "play-pause" ]]; then
  # playerctl play-pause
  mpc -p 6601 toggle
fi

if [[ $1 == "next" ]]; then
  # playerctl next
  mpc -p 6601 next
fi
