#!/bin/sh

dnf repoquery --userinstalled > ~/.pkgs.txt

dnf copr list > ~/.pkgs-copr.txt

flatpak list > ~/.pkgs-flatpak.txt 
