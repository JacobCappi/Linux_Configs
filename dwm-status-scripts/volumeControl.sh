#!/bin/sh

# Wrapper for volume controller so I can refresh bar 

# tried to edit the dwm.c spawn(), but fork exec made it wierd,
# instead I just run the refresh bar at the end of this wrapper
if [ $# = 0 ]
then
    pactl set-sink-mute @DEFAULT_SINK@ toggle
elif [ $# = 1 ]
then
    if [ $1 = "up" ] || [ $1 = "u" ]
    then
        pactl set-sink-volume @DEFAULT_SINK@ +5%
    elif [ $1 = "down" ] || [ $1 = "d" ] 
    then
        pactl set-sink-volume @DEFAULT_SINK@ -5%
    else
        echo "error: invalid param"
    fi
else
    echo "error: volume: invalid command" 
fi
