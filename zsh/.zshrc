export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

DISABLE_MAGIC_FUNCTIONS="true"

plugins=(
    colored-man-pages
	git
    sudo
    zoxide
	zsh-autosuggestions
	zsh-syntax-highlighting
    zsh-vi-mode # jeffreytse/zsh-vi-mode
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

###############
### HISTORY ###
###############

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY

# alias
alias update="sudo pacman -Syu"
alias get="sudo pacman -S "
alias v="nvim "
alias ls="eza --icons"

eval "$(starship init zsh)"
