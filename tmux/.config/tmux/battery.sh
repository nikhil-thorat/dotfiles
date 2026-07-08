#!/bin/bash

status=$(cat /sys/class/power_supply/BAT0/status)
percentage=$(cat /sys/class/power_supply/BAT0/capacity)

if [ "$status" = "Discharging" ]; then
    if [ "$percentage" -ge 75 ]; then
        echo "#[fg=brightgreen,bold,bg=default] λ "
    elif [ "$percentage" -ge 50 ]; then
        echo "#[fg=brightblue,bold,bg=default] λ "
    elif [ "$percentage" -ge 25 ]; then
        echo "#[fg=brightyellow,bold,bg=default] λ "
    else
        echo "#[fg=brightred,bold,bg=default] λ "
    fi
else
    echo "#[fg=green,bg=black]░▒▓#[fg=black,bold,bg=green] λ "
fi
