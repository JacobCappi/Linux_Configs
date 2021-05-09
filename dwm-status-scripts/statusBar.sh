#!/bin/sh
# with no internet, the weather won't print. Unsure how to get it to just keep what I had
xsetroot -name " $(getVolume) | $(getBattery) | Time: $(date +%R\ %F) "
