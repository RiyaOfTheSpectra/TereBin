#!/bin/sh
#wifi_on=$(/usr/bin/nmcli dev wifi | wc -l)

#if [[ "$wifi_on" != "1" ]]; then
    #notify-send "WiFi Disconnected" "Maybe get off of airplane mode?";
    #exit
#fi

show_password () {
    feh ~/Z/Photograms/Hotspot.png --title Hotspot;}

list () {
    network=$(nmcli -f "SSID" dev wifi list | rofi -dmenu -i -location 2 -p "WiFi Nets");
    if $(nmcli dev wifi con $network | grep password); then
        rofi -dmenu -l 0 -location 2 -p "Enter Password";
    fi
}

case "$(printf "hotspot\npassword\nrescan\nlist" | rofi -dmenu -i -c -l 4 -location 2 -p "NetMan")" in
    hotspot) nmcli dev wifi hotspot;;
    password) show_password;;
    rescan) nmcli dev wifi rescan;;
    list) list;;
esac
