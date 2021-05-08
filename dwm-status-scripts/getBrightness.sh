#!/bin/sh

# bad design, my max_brightness is 15, so I mult the value by 66 and take the first 2 digits
# I also add one b/c 15 * 66 is 990.

echo "Brightness: $(cat /sys/class/backlight/acpi_video0/brightness)"
