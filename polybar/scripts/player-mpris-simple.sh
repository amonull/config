#!/bin/bash

# player_status=$(playerctl -p $(cat ~/.config/playerctl-priority-list | tr '\n' ',') status 2> /dev/null)
player_status=$(playerctl status 2> /dev/null)

#if [ "$player_status" = "Playing" ]; then
#    echo " $(playerctl metadata artist) - $(playerctl metadata title | sed -E 's/(.{30}).+/\1.../')"
#elif [ "$player_status" = "Paused" ]; then
#    echo " $(playerctl metadata artist) - $(playerctl metadata title | sed -E 's/(.{30}).+/\1.../')"
#else
#    echo ""
#fi

########################### ABOVE IS ORIGINAL CODE ###################################################

formatFunction() {
	# artist=$(playerctl -p $(cat ~/.config/playerctl-priority-list | tr '\n' ',') metadata | grep "artist")
	artist=$(playerctl metadata | grep "artist")
	if [[ -z $artist ]]; then
		# echo " $(playerctl -p $(cat ~/.config/playerctl-priority-list | tr '\n' ',') metadata title | sed -E 's/(.{20}).+/\1../')"
		echo " $(playerctl metadata title | sed -E 's/(.{20}).+/\1../')"
	else
		# echo " $(playerctl -p $(cat ~/.config/playerctl-priority-list | tr '\n' ',') metadata artist | sed -E 's/(.{5}).+/\1../') - $(playerctl -p $(cat ~/.config/playerctl-priority-list | tr '\n' ',') metadata title | sed -E 's/(.{20}).+/\1../')"
		echo " $(playerctl metadata artist | sed -E 's/(.{5}).+/\1../') - $(playerctl metadata title | sed -E 's/(.{20}).+/\1../')"
	fi
}

if [ "$player_status" = "Playing" ]; then
	formatFunction
elif [ "$player_status" = "Paused" ]; then
	formatFunction
else
    echo ""
fi
