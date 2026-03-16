#!/bin/bash
 export DISPLAY=:0 
 export XAUTHORITY=/home/david/.Xauthority
 sleep 0.5
if nmcli -t -f TYPE,STATE connection show --active | grep -q "vpn:activated"; then
    cp /home/david/.config/i3/work-color /home/david/.config/i3/colors
else
    cp /home/david/.config/i3/home-color /home/david/.config/i3/colors
fi
i3-msg restart
