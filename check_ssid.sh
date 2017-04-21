#!/bin/sh

. ./scr.conf

SSID=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | tr -d " " | sed -n "/^SSID/p" | cut -c6-`

PATH1=$WALLPAPER_FORMAL_PATH
PATH2=$WALLPAPER_HOME_PATH


if [ $SSID = $SSID_HOME ]
then
    IMG_NAM=`expr $(( $(od -vAn -N4 -tu4 < /dev/random) % 7 )) + 1`
    change_wallpaper.sh ${PATH2}/$IMG_NAM.png
else
    change_wallpaper.sh ${PATH1}/1.png
fi
