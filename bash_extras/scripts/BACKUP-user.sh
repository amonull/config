#!/bin/sh

DATE="$(date '+%d-%b-%Y')"

# -e PATH excluded as it causes permission errors (system backup config kept there as well)
borg create -e "/home/${USER}/.config/borg/security/8515ca61b62f1cf4e3b4e88f29489ddd50c78367846916ed44dec4962205c707" -e "/home/${USER}/.cache/borg/8515ca61b62f1cf4e3b4e88f29489ddd50c78367846916ed44dec4962205c707" "/run/media/${USER}/backup/user-backups::$DATE" /home/${USER}/installed_pkgs.txt /home/${USER}/installed_thirdparty.txt /home/${USER}/Music /home/${USER}/Public /home/${USER}/Videos /home/${USER}/Pictures /home/${USER}/Arduino /home/${USER}/Documents /home/${USER}/Downloads /home/${USER}/Templates /home/${USER}/.config /home/${USER}/.bashrc /home/${USER}/.emptty /home/${USER}/.inputrc /home/${USER}/.aliasrc /home/${USER}/.profile /home/${USER}/.xinitrc /home/${USER}/.Xresources /home/${USER}/.bash_profile /home/${USER}/.librewolf /home/${USER}/.local /home/${USER}/.icons /home/${USER}/.themes /home/${USER}/.mozilla /home/${USER}/.thunderbird /home/${USER}/.cache /home/${USER}/.gitconfig /home/${USER}/.ssh
