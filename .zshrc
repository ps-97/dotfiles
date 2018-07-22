# oh-my-zsh
export ZSH=/home/mrdntgveafck/.oh-my-zsh
ZSH_THEME="agnoster"

# Red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  colored-man-pages
  colorize
  vi-mode
  sudo
  adb
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Default user
DEFAULT_USER=$USER

# Autostart X at login
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

#Base 16
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Personal Alias
alias vi="vim"
alias jrnl="~/bin/jrnl.sh"
alias shwjrnl="vim ~/doc/jrnl"
alias recon="~/bin/connman.sh"
alias dotfiles='git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME' 

