#!/bin/sh

while true
do
    battery_state=$(apm -a)
    bat=$(apm -l)

    if [ "$battery_state" = "0" ]
    then
        if [ $bat -le 4 ]
        then
            zzz
        elif [ $bat -le 10 ]
        then
            notify-send -u critical "Help!!!" "My batteries are dying!"
        fi
    fi
    sleep 10
done
