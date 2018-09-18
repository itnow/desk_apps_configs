# Some desk configs


Fix for xinput in Xubuntu 18.04 ([Bug](https://bugs.launchpad.net/ubuntu/+source/xfce4-settings/+bug/1758023)):

    $ sudo apt remove xserver-xorg-input-libinput && sudo apt install xserver-xorg-input-evdev
