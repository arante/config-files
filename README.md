# dotfiles

A collection of configs (configuration files) for my software dev't machines.

## Setup

Create symbolic links for the following configs:
  - `.zshrc`
  - `.gitconfig` 
  - `.vimrc`
  - `.tmux.conf`
  - `.profile`
  - `.czrc`

### `zsh`

```bash
ln -s ~/.dotfiles/robbyrussell-custom.zsh-theme ~/.oh-my-zsh/themes/robbyrussell-custom.zsh-theme
```

### `kitty`

Create a symbolic link for the `kitty` config.

```bash
ln -s ~/.dotfiles/kitty/kitty.conf ~/.config/kitty/
```

Create a symbolic link for the `kitty-themes` config.

```bash
ln -s ~/.dotfiles/kitty/kitty-themes/themes/Solarized_Dark.conf ~/.config/kitty/kitty-themes/themes/
```

```bash
ln -s ~/.config/kitty/kitty-themes/themes/Solarized_Dark.conf ~/.config/kitty/theme.conf
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
