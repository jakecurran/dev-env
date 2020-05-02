# Development Environment

Documentation of my preferred development environment OS, applications, and configuration.

Preferred distros: [Pop!\_OS](https://system76.com/pop), [Xubuntu](https://xubuntu.org/)

## Initial Setup

After install,

### Install updates

```bash
sudo apt update
sudo apt upgrade
```

### Settings

Appearance
- Slim mode

Privacy
- Automatically empty Trash
- Automatically purge Temporary Files
- Purge After: 30 days

Power
- Automatic Suspend
  - On Battery Power: 20 minutes
  - Plugged In: 20 minutes

Devices
- Displays
  - Night Light: Sunset to Sunrise

### Directory sorting

Sort underscore folders first:

```bash
sudo update-locale LC_COLLATE=C
```

Sort folders before files:
- Nautilus -> Preferences -> "Sort folders before files"

### Change hostname

Edit hostname in `/etc/hostname` and `/etc/hosts` files.

### Correct sound issue

If setting up a VM running in UnRAID, audio can crackle.

To fix,

- Edit `/etc/pulse/daemon.conf`
- Uncomment line with `default-sample-rate` and change value to 48000
- Save file
- Restart

### Enable gestures

If setting up a laptop with a trackpad, add three and four finger gestures using [Hikari9/comfortable-swipe-ubuntu](https://github.com/Hikari9/comfortable-swipe-ubuntu).

## Install TexLive

```
sudo apt install texlive-full
```

### Configure Git

Copy Git config file `config/git/.gitconfig` to `~`

### Generate SSH key

https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

## Install Applications

- Audacity
- Chrome
- DB Browser for SQLite
- GIMP
- GNOME Tweaks
- Guake
- InSync
- Keybase
- Private Internet Access
- Spotify
- Sublime Text
- Sublime Merge
- VNC Connect
- VNC Viewer
- Visual Studio Code
- WireShark

## Install Fonts

- [Hack](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack)

### GNOME Tweaks

- Fonts -> Monospace Text -> Hack Regular
- Window Titlebars -> Enable Minimize titlebar button

### Sublime Text

- Enter license
- Install package manager
- Install packages from packages.txt
- Set preferences file to preferences.txt
- Set as default text editor

### InSync

- `/home/jakecurran/[Gmail address]`

### VNC Connect

- Run `vnclicensewiz` and login to RealVNC
- Start VNC Connect: `sudo systemctl start vncserver-x11-serviced.service`
- Set to start on login: `sudo systemctl enable vncserver-x11-serviced.service`

## Setup shell

- Alacritty
- Neovim
- zsh

```bash
sudo apt install zsh
chsh -s /usr/bin/zsh
```

- oh-my-zsh
- spaceship-prompt
- tmux
