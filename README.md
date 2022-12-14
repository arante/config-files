# dotfiles

A collection of configs (configuration files) for my software dev't machines.

## Setup

1. Create symbolic links for the following configs:
   - .zshrc
   - .gitconfig
   - .vimrc
   - .tmux.conf
   - .profile

2. Download all of the vim plugins using the `install_vins.py` script and the
   `vins.csv`.

3. Clone the `tmux-resurrect` and `tmux-continuum` at `home/OpenSourceAdvocate/`.

## Commands

- How to create a symbolic link?
  ```
  ln -s <source> <destination>
  ```
