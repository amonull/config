#!/bin/bash

userUpdates=$(nix-channel --update && nix-env --dry-run -u 2> /dev/null | wc -l)
# systemUpdates=$(nix-env -p /nix/var/nix/profiles/default --dry-run -u 2> /dev/null | wc -l)
# needs sudo nix-channel --update (using -p is not an option for nix-channel)

# updates=$(($userUpdates + $systemUpdates))
updates=$userUpdates

# checks if it is not empty if it not it prints the numbers
if [ -n "$updates" ] && [ "$updates" -gt 0 ]; then
  # echo " $updates"
  echo " $updates"
else
  echo "test"
	# echo ""
fi
