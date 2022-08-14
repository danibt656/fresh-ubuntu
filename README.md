# Fresh Ubuntu Install

Couple of post-installation scripts for setting up a fresh Ubuntu-based distro.

To set up, just run the autostart.sh script:

```
$ chmod +x autostart.sh && ./autostart.sh
```

Feel free to tweak it for your own machine, but I appreciate if you give me a star :^)

## Additional notes

### vim

This vim setup comes with vim-plug as a Plugin manager. As an example, the auto-completer "CoC" has been added to the plugin list.

Also, there are custom keymaps:

+ On Normal mode, press `Ctrl+m` for opening a new tab inside the Explorer mode.

### i3 tiling window manager

This install script configures both i3 and i3status in a very minimalistic way (almost no ricing included).

You'll have to edit the file at `~/.config/i3/config` for setting up the wallpaper on your desired image's path.

Here, I also added custom keymaps:

+ Press `Mod+i` to open the Firefox web browser
