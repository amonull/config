#!/bin/bash

installed_pkgs_by_date=$(xbps-query -p install-date -s "" | sort -k2 | awk 'BEGIN { FS = ":" } ; { print $1 }')
manullay_installed_pkgs=$(xbps-query -m)

for pkg in $installed_pkgs_by_date; do
  if [[ "${manullay_installed_pkgs[*]}" =~ $pkg ]]; then
    echo "$pkg"
  fi
done
