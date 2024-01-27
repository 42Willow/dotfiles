#!/bin/bash

nmcli device wifi rescan

ssid=$(nmcli -f SSID dev wifi | awk 'NR>1 {sub(/[ \t]+$/, ""); print}' | grep -v -e "--" | tofi --prompt-text "connect: " --font /usr/share/fonts/OTF/MonaspiceNeNerdFont-Regular.otf)
output=$(nmcli device wifi connect "$ssid" 2>&1)
if [ $? -eq 0 ]; then
    dunstify "󰖩  WiFi Connected" "SSID: $ssid"
else
    dunstify -u 2 "󱚵  WiFi Connection Failed" "$output"
fi
