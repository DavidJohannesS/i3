#!/bin/bash

if ip link show tun0 >/dev/null 2>&1; then
    cp ~/.config/i3/home-color ~/.config/i3/colors
else
    cp ~/.config/i3/work-color ~/.config/i3/colors
fi

i3-msg reload
