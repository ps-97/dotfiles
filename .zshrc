zmodload zsh/zprof
# oh-my-zsh
export ZSH="/home/mrdntgveafck/.oh-my-zsh"
ZSH_THEME="agnoster"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git vi-mode sudo)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set $PATH variable
export PATH="${PATH}:$HOME/bin:$HOME/.local/bin"

# Autostart X at login
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

#Base 16
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Default user
DEFAULT_USER=$USER

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Personal Alias
# nvim
if [ -x "$(command -v nvim)" ]; then
	alias vi="nvim"
else
	alias vi="vim"
fi

alias jrnl="~/bin/jrnl.sh"
alias shwjrnl="vim ~/doc/jrnl"
alias dotfiles='git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'

# Python venv
# source ~/.local/bin/virtualenvwrapper.sh
# export WORKON_HOME=~/dev/envs

# npm
export PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules
