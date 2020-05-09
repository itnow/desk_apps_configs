# Some desk configs


Fix for xinput in Xubuntu 18.04 ([Bug](https://bugs.launchpad.net/ubuntu/+source/xfce4-settings/+bug/1758023)):

    $ sudo apt remove xserver-xorg-input-libinput && sudo apt install xserver-xorg-input-evdev


Displays setup

    # Show all info
    $ sudo xrandr

Displays configs examples

    # Switch to Dual external displays
    xrandr --output HDMI-3 --auto --mode 1920x1080 --primary
    xrandr --output HDMI-2 --auto --mode 1280x1024 --right-of HDMI-3 --pos 1920x0 
    # Switch to Single external display
    xrandr --output HDMI-3 --auto --mode 1920x1080 --primary
    xrandr --output HDMI-2 --off
    
    # Switch to Dual external displays
    xrandr --output HDMI-1-1 --auto --mode 1920x1080 --primary
    xrandr --output DP-1 --auto --mode 1280x1024 --right-of HDMI-1-1 --pos 1920x0
    # Switch to Single external display
    xrandr --output HDMI-1-1 --auto --mode 1920x1080 --primary
    xrandr --output DP-1 --off


Bench NVME

In order to bypass the page cache, causing the reads to go directly from the drive into hdparm's buffers (ie "raw" I/O), you need to use the --direct parameter in hdparm. That is:

    $ sudo hdparm -Tt --direct /dev/nvme0n1

That way your results will be lower but close the actual disk's performance.