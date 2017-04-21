#!/bin/sh

SSID=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | tr -d " " | sed -n "/^SSID/p" | cut -c6-`

if [ -n "${SSID}" ]; then
    echo $SSID
else
    echo "none"
fi
