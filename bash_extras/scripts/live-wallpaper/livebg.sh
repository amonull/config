#!/usr/bin/sh

# Works only on X11
#
# Depends:
#   xwinwrap
#   mpv

xwinwrap -fs -fdt -ni -b -nf -un -o 1.0 -argb -ovr -debug -- mpv -wid WID --loop --no-audio "$@" --input-ipc-server=/tmp/mpvsocket
