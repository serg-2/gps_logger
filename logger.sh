#!/bin/bash
while true; do
    if ! pidof gpxlogger >/dev/null; then
        echo "restarting"
        gpxlogger -d -f /home/pi/gpslogs/log'%Y-%m-%d-%H:%M:%S'.txt -i 2
    fi
    sleep 10
done &
