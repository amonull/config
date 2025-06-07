#!/bin/bash

githubVersion=$(curl -s "https://api.github.com/repos/phenax/bsp-layout/tags" | grep -Po '"name":.*?[^\\]",' | head -n 1 | awk -F'\"' '{print $4}' | sed "s/v//")
downloadedVersion=$(bsp-layout version | cut -f1 -d"-")

#COLOURS
RED="\033[38;2;255;95;95m"
YELLOW="\033[33m"
GREEN="\033[32m"
WHITE="\033[97m"

if [ "$downloadedVersion" == "$githubVersion" ]; then
	alertColour=$GREEN
else
	alertColour=$RED
fi

printf "bsp-layout Update Checker:\n$WHITE \bCurrent Downloaded Version Is: $alertColour $downloadedVersion $WHITE\nNewest Avaliable Version Is: $GREEN $githubVersion\n"
