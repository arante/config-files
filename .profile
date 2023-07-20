export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Python programming settings
export PATH=$PATH:/home/$USER/.local/bin

# Go programming settings
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/$USER/go/bin

unclutter --timeout 1 &
