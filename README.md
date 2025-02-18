# dotfiles

A collection of configs (configuration files) for my software dev't machines.

## Setup

Create symbolic links for the following tools of their respective configuration
files:

- `git`
- `kitty`
- `i3`
- `tmux`
- `vim`
- `zsh`
- .profile
- .czrc

### zsh

```console
ln -s ~/.dotfiles/robbyrussell-custom.zsh-theme ~/.oh-my-zsh/themes/robbyrussell-custom.zsh-theme
```

### i3

NOTE: Upon setting a `i3`, ignore the prompt of creating a new config file for
the machine, instead to this.

Create a symbolic link for the `i3` configuration file.

```console
ln -s $HOME/.dotfiles/i3/config $HOME/.config/i3/config
```

#### Must haves for i3 setup

`flameshot` for screenshots

```console
sudo dnf install flameshot
```

```console
flameshot gui
```

### kitty

Create a symbolic link for the `kitty` configuration file.

```console
ln -s ~/.dotfiles/kitty/kitty.conf ~/.config/kitty/
```

Create a symbolic link for the `kitty` color scheme configuration file.

```console
ln -s ~/.config/kitty/kitty-themes/themes/solarized-dark.conf ~/.config/kitty/theme.conf
```

Download all of the vim plugins using the `install_vins.py` script and the
`vins.csv`.

### tmux

Clone the `tmux-resurrect` and `tmux-continuum`, reboot the machine afterwards:

```console
git clone https://github.com/tmux-plugins/tmux-continuum ~/.config/tmux-continuum
git clone https://github.com/tmux-plugins/tmux-resurrect ~/.config/tmux-resurrect
```

Switch to the _appropriate_ branch for the machine, if necessary.

### pyenv

`curl` and install `pyenv`. The tool to manage multiple versions of `python`.

```console
cur https://pyenv.run | bash
```

**NOTE:** Check the [docs](https://github.com/pyenv/pyenv?tab=readme-ov-file#automatic-installer) for reference.

## Commands

How to create a symbolic link?

```console
ln -s <target_file> <symlink_destination>
```
