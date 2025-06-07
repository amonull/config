#!/bin/bash

gitVersion="$(curl -s https://git.suckless.org/dwm/refs.html | grep "<tr><td>[0-9]" | head -n 1 | grep -o "[0-9]\.[0-9]")"
# localVersion="$(dwm --version)"
localVersion="$(grep "VERSION =" ~/.config/dwm/config.mk | awk -F '=' '{print $NF}' | tr -d ' ')"

if [ ! "$gitVersion" = "$localVersion" ]; then
  echo "needs update"
fi
