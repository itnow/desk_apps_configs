#!/bin/bash

# Switch to Dual external displays
xrandr --output HDMI-1-1 --auto --mode 1920x1080 --primary
xrandr --output DP-1 --auto --mode 1280x1024 --right-of HDMI-1-1 --pos 1920x0

