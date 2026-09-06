#!/bin/sh

status=$(nmcli general status connectivity | tail -n 1 | awk '{print $2}')
output=$(curl wttr.in/?format='%m+%l:+%C+%t,+%P\n')
locale=$(echo $output | awk '{print $2}')

if [ $status == "none" ]; then
    echo "Off the grid. Look outside the window."
elif [ $locale == "not found" ]; then
    echo "I have no clue where we are in the world. Are we in the world?"
else
    echo "${output}"
fi
