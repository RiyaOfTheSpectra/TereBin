#!/bin/bash

if [[ "$(playerctl -p spotify status)" = "Playing" ]]; then
    player=spotify
elif [[ "$(playerctl -p vlc status)" = "Playing" ]]; then
    player=vlc
elif [[ "$(playerctl -p cmus status)" = "Playing" ]]; then
    player=cmus
fi

playerctl -p $player $1
