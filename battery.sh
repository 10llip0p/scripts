#!/bin/sh

hoge=`pmset -g ps | awk '/Internal/ {PERCENT = $2} {STATUS = $3} {REMAIN = $4} END {printf("%2s",PERCENT) ;if (STATUS == "charged;") printf(" Charged");if (STATUS == "charging;") printf(" Charging"); if (STATUS == "discharging;") printf(" %s",REMAIN)}' | tr -d ';'`


fuga=`echo ${hoge} | sed -e 's/[^0-9]//g'`
#echo $fuga
if [ ${fuga} -lt 60 ]; then
    piyo="#[fg=colour226]"
elif [ ${fuga} -lt 30 ]; then
    piyo="#[fg=colour1]"
else
    piyo="#[fg=colour119]"
fi

echo $piyo $hoge
