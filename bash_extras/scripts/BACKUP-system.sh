#!/bin/sh

DATE="$(date '+%d-%b-%Y')"

borg create "/run/media/${USER}/backup/system-backups::$DATE" /etc /var /root /boot /usr/share /usr/local
