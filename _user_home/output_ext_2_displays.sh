#!/bin/bash

#  Switch to Dual external displays
xrandr --output HDMI-3 --auto --mode 1920x1080 --primary
xrandr --output HDMI-2 --auto --mode 1280x1024 --right-of HDMI-3 --pos 1920x0

