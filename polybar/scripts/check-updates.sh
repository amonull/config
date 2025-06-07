#!/bin/sh

updates=$(xbps-install -Mun 2> /dev/null | wc -l)

# checks if it is not empty if it not it prints the numbers
if [ -n "$updates" ] && [ "$updates" -gt 0 ]; then
    # echo " $updates"
    echo "ﮮ $updates"
else
    #echo " 0"
	echo ""
fi
