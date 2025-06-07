#!/bin/sh

# for URxvt
#bspc rule -a URxvt -o state=floating rectangle=700x500+600+35 ; urxvt -e calcurse

# for Alacritty
bspc rule -a Alacritty -o state=floating rectangle=700x500+600+35 ; alacritty -e calcurse
