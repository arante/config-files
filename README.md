# dotfiles

A collection of configs (configuration files) for my software dev't machines.

## Setup

0. Install `pyenv`:

```bash
curl -sS https://webi.sh/pyenv | sh
```

1. Create symbolic links for the following configs:
   - .zshrc
   - .gitconfig
   - .vimrc
   - .tmux.conf
   - .profile
   - .czrc

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

2. Download all of the vim plugins using the `install_vins.py` script and the
   `vins.csv`.

3. Clone the `tmux-resurrect` and `tmux-continuum` at `home/OpenSourceAdvocate/.*`.

4. Switch to the _appropriate_ branch for the machine.

## Commands

- How to create a symbolic link?
  ```
  ln -s <target_file> <symlink_destination>
  ```
