#!/usr/bin/env sh

## add to wm startup file

# terminate polybar if already running
#killall -q polybar # use if {enable-ipc = false} for bars
polybar-msg cmd quit # use if {enable-ipc = true} for bars

# launch polybar(s)
# polybar top 2>&1 | tee -a /tmp/polybar_top.log &
# polybar bottom 2>&1 | tee -a /tmp/polybar_bottom.log &
polybar main 2>&1 | tee -a /tmp/polybar_main.log &
