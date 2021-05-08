#!/bin/sh
xsetroot -name " $(getVolume) | $(getBattery) | Time: $(date +%R\ %F)"
