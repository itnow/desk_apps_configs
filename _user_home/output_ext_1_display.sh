#!/bin/bash

# Switch to Single external display
xrandr --output HDMI-3 --auto --mode 1920x1080 --primary
xrandr --output HDMI-2 --off

