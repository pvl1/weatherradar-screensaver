#!/bin/sh

#GIF=/home/knorke/.screensaver/screensaver$XSCREENSAVER_WINDOW.gif
#OLDGIFS=/home/knorke/.screensaver/screensaver*.gif
#GIFFILES=(/home/knorke/.screensaver/images/*.gif)
if [ ! -d /tmp/weather ];then
    mkdir /tmp/weather;
fi
    #wget -P /tmp/weather/ http://radar.weather.gov/ridge/Conus/Loop/NatLoop.gif
    wget -qO -  http://radar.weather.gov/ridge/Conus/Loop/NatLoop.gif | gifsicle --position 0,275 --resize-fit 1600x900 -  > /tmp/weather/out.gif
#fi
#rm $OLDGIFS
#ln -sf "${GIFFILES[RANDOM % ${#GIFFILES[@]}]}" $GIF
#sleep .5
gifview  --animate --min-delay 5 --window $XSCREENSAVER_WINDOW /tmp/weather/out.gif

