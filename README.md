# dotfiles

A collection of configs (configuration files) for my software dev't machines.

## Setup

Create symbolic links for the following tools of their respective configuration
files:

- `zsh`
- `kitty`
- `git`
- `vim`
- `tmux`
- `.profile`
- `.czrc`

### `zsh`

```bash
ln -s ~/.dotfiles/robbyrussell-custom.zsh-theme ~/.oh-my-zsh/themes/robbyrussell-custom.zsh-theme
```

### `kitty`

Create a symbolic link for the `kitty` configuration file.

```bash
ln -s ~/.dotfiles/kitty/kitty.conf ~/.config/kitty/
```

Create a symbolic link for the `kitty` color scheme configuration file.

```bash
ln -s ~/.config/kitty/kitty-themes/themes/solarized-dark.conf ~/.config/kitty/theme.conf
```

Download all of the vim plugins using the `install_vins.py` script and the
`vins.csv`.

### `tmux`

Clone the `tmux-resurrect` and `tmux-continuum`, reboot the machine afterwards:

```bash
git clone https://github.com/tmux-plugins/tmux-continuum ~/.config/tmux-continuum
git clone https://github.com/tmux-plugins/tmux-resurrect ~/.config/tmux-resurrect
```

Switch to the _appropriate_ branch for the machine, if necessary.

### pyenv

`curl` and install `pyenv`. The tool to manage multiple versions of `python`.

```bash
cur https://pyenv.run | bash
```

**NOTE:** Check the [docs](https://github.com/pyenv/pyenv?tab=readme-ov-file#automatic-installer) for reference.

## Commands

How to create a symbolic link?

```bash
ln -s <target_file> <symlink_destination>
```
