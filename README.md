# Development Environment

Documentation of my preferred development environment OS, applications, and configuration.

Preferred distro: [Pop!\_OS](https://system76.com/pop)

## Initial Setup

After install,

### Install updates

```bash
sudo apt update
sudo apt upgrade
```

### Sort underscore folders first

```bash
sudo update-locale LC_COLLATE=C
```

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

### Configure Git

Copy Git config file `config/git/.gitconfig` to `~`

### Generate SSH key

https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

### Install Snap/Flatpak

```bash
sudo apt install snapd flatpak
```

## Install Applications

- Audacity
- BeyondCompare
- Chromium
- GIMP
- GNOME Tweaks
- InSync
- Keybase
- Slack
- Spotify
- Sublime Text
- VNC Connect
- VNC Viewer
- WireShark

### Sublime Text

- Enter license
- Install package manager
- Install packages from packages.txt
- Set preferences file to preferences.txt
- Set as default text editor

### InSync

- `/home/jakecurran/[Gmail address]`

### GNOME Tweaks

- Window Titlebars -> Enable Minimize titlebar button

### VNC Connect

- Run `vnclicensewiz` and login to RealVNC
- Start VNC Connect: `sudo systemctl start vncserver-x11-serviced.service`
- Set to start on login: `sudo systemctl enable vncserver-x11-serviced.service`

## Install Fonts

- Inconsolata-dz
