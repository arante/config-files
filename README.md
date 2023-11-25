# dotfiles

A collection of configs (configuration files) for my software dev't machines.

## Setup

Install `pyenv`:

```bash
curl -sS https://webi.sh/pyenv | sh
```

Clone the `nvim` repository for `nvim` configurations.

```bash
git clone git@github.com:arantebw/nvim.git
```

Install `packer`, the `nvim` package manager.

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Install the needed `nvim` packages:

```bash
:MasonInstall <plugin>
```

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

Clone the `tmux-resurrect` and `tmux-continuum` at `home/OpenSourceAdvocate/.*`.

Switch to the _appropriate_ branch for the machine, if necessary.

## Commands

How to create a symbolic link?

```bash
ln -s <target_file> <symlink_destination>
```
