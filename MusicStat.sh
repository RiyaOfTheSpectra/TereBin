#!/bin/bash
if [ "$(playerctl -p spotify status)" = "Playing" ]; then
    player=spotify
elif [ "$(playerctl -p vlc status)" = "Playing" ]; then
    player=vlc
elif [ "$(playerctl -p cmus status)" = "Playing" ]; then
    player=cmus
fi

title=$(playerctl -p $player metadata --format={{title}})
album=$(playerctl -p $player metadata --format={{album}})
artist=$(playerctl -p $player metadata --format={{artist}})

notify-send "$title" "from $album \nby $artist"
