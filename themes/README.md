Window decorations

    - Extract the theme in `~/.local/share/themes` or system wide installation in `${sysprefix}/local/share/themes`
    - Make sure the directory layout looks like this: `~/.local/share/themes/<theme_name>/xfwm4/`
    - If the theme contains scalable images (`~/.local/share/themes/<theme_name>/xfwm4/*.svg`) it's better to install the `librsvg` package
    - Select the theme in the Window Manager Settings


GTK+ interfaces

A GTK+ theme is the theme of the toolkit (buttons, textfields, etc). Most of
the GTK+ themes need their own theme engine, make sure you have that theme
engine installed with the same prefix as the GTK+ toolkit. To install and use
a theme, follow these steps:

    - Extract the theme in `~/.local/share/themes`
      or system wide installation in `${sysprefix}/local/share/themes`
    - Make sure the theme contains the following file: `~/.local/share/themes/<theme_name>/gtk-2.0/gtkrc`
    - Select the theme in the User Interface Settings (Xfce 4.4.x) or in the Appearance Settings (Xfce 4.6.x)

