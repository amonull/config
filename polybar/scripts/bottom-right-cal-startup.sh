#!/bin/sh

# for URxvt
#bspc rule -a URxvt -o state=floating rectangle=700x500+600+35 ; urxvt -e calcurse

# for Alacritty
bspc rule -a Alacritty -o state=floating rectangle=700x500+1205+520 ; alacritty -e calcurse
