#!/bin/sh


#assuming left and right are the same [b/c I think that's always the case?]


# probably a better way, but seems easy enough
if [ $(pactl list sinks | grep Mute | awk '{print $2}') = yes ]
then
    echo "Audio: " $(pactl list sinks | grep -m 1 Volume | awk '{print $5}') " (mute)"
else
    echo "Audio: " $(pactl list sinks | grep -m 1 Volume | awk '{print $5}')
fi




