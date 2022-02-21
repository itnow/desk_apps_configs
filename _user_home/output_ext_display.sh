#!/bin/bash

# Switch to Single external display
xrandr --output HDMI-1-1 --auto --mode 1920x1080 --primary
xrandr --output DP-1 --off

