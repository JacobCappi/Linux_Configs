#!/bin/sh
if ping -q -c 1 -W 1 wttr.in > /dev/null; then
    echo "$(curl wttr.in/?format="Weather:+%t+(%C)+Humidity+%h\n") ($(date +%R))" > /home/arch/.config/weather/current
fi
