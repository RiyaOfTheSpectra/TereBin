#!/bin/bash
while true
do
    bat=`acpi -b | grep -P -o '[0-9]+(?=%)'`
    battery_state=`acpi -b | grep -P -o ': ...........'`

    if [ "$battery_state" = ": Discharging" ] && [ $bat -le 10 ]
    then
            notify-send -u critical "Help!!!" "My batteries are dying!"
    fi
    if [ "$battery_state" = ": Discharging" ] && [ $bat -le 4 ]
    then
        systemctl suspend
    fi
sleep 60
done
