#!/bin/bash

updaterLink="$(curl -s "https://github.com/microsoft/vscode/tags" | grep "Link--primary Link" | awk -F '</a>' '{print $1}' | awk -F '>' '{print $NF}' | tr -d 'v' | head -n 1)"

echo $updaterLink
