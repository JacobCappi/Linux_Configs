#!/bin/sh
if ping -q -c 1 -W 1 wttr.in > /dev/null; then
    echo "$(curl wttr.in/?format="%t+%c\n") ($(date +%R))" > /home/debian/.config/weather/current
fi
