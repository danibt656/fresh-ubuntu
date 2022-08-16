# Fresh Ubuntu Install

Couple of post-installation scripts for setting up a fresh Ubuntu-based distro.

To set up, just run the autostart.sh script:

```
$ chmod +x autostart.sh && ./autostart.sh
```

Feel free to tweak it for your own machine, but I appreciate if you give me a star :^)

## Additional notes

## distro of choice

This configuration setup was made bearing in mind Ubuntu-based Linux distributions. More specifically, I developed them in Ubuntu 20.04 and, more recently, Ubuntu 18.04.

It should work just fine on any other Ubuntu-based distro, as long as it uses the apt package manager, although other things, such as wallpapers, might break. Idk.

Anyways, I am quite comfortable with Ubuntu 18 so I won't bother changing this config to another distro (don't get me started with Arch, seriously).

### vim

This vim setup comes with vim-plug as a Plugin manager. As an example, the auto-completer "CoC" has been added to the plugin list.

Also, there are custom keymaps:

+ On Normal mode, press `Ctrl+m` for opening a new tab inside the Explorer mode.

### i3 tiling window manager

This install script configures both i3 and i3status in a very minimalistic way (almost no ricing included).

You'll have to edit the file at `~/.config/i3/config` for setting up the wallpaper on your desired image's path.

Here, I also added custom keymaps:

+ Press `Mod+i` to open the Firefox web browser
