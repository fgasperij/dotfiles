# zsh
# autoload -U compinit; compinit
# zstyle ':completion:*' menu select # arrow navigation of completion options
# setopt auto_cd # directory == cd directory
# setopt auto_pushd # populate the dir stack

DOTFILES=~/repos/dotfiles

# command line editing
export EDITOR="vim"
bindkey -v # vi emulation mode
bindkey '^R' history-incremental-search-backward
bindkey -M vicmd '^U' clear-screen
bindkey -M viins '^U' clear-screen
bindkey -M viins 'jk' vi-cmd-mode

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-tomorrow.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# aliases
## tmux
alias ta='tmux attach -t'
alias ts='tmux new-session -s'
alias tk='tmux kill-session -t'
## utilities
alias ccat='pygmentize -g'
## shortcut
alias reload!='source ~/.zshrc'
alias config='vim ~/.zshrc.pre-oh-my-zsh'

# shorcuts

function tst() {
  selected_setup=$1
  shift 1
  ~/dotfiles/tmux/tmux_setups/${selected_setup}.sh $@
}
function cherry-picky() {
  git log -1 -p $1 $2 | patch -p1
}
function gi() {
  curl -L -s https://www.gitignore.io/api/"$@" ;
}

# autojump
source /etc/profile.d/autojump.zsh