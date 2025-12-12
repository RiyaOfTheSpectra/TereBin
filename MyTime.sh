#!/bin/zsh

timezone=$(timedatectl list-timezones | rofi -location 3 -l 15 -i -dmenu -p "Where?")

if [[ -z $timezone ]]; then
    short_tz="Here and now…"
else
    short_tz=$(echo $timezone | sed -e "s/\//\n/" | tail -n 1)
fi

time=$(TZ=$timezone date +"%H%M\n%A, %d %B %Y")

notify-send $short_tz $time
