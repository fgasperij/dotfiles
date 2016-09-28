# brew comes first
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin
# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# nvm
export NVM_DIR="$HOME/.nvm"
# emacs
alias emacs="/usr/local/Cellar/emacs-plus/24.5/Emacs.app/Contents/MacOS/Emacs"

# zsh
# autoload -U compinit; compinit
# zstyle ':completion:*' menu select # arrow navigation of completion options
# setopt auto_cd # directory == cd directory
# setopt auto_pushd # populate the dir stack

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
## brium
alias bri='brium'
alias bri\?='brium \?'
## tmux
alias ta='tmux attach -t'
alias ts='tmux new-session -s'
alias tk='tmux kill-session -t'
## utilities
alias ll='ls -lah'
alias l='ls -lah'
alias be='bundle exec'
alias ccat='pygmentize -g'
## shortcut
alias todos='vim ~/notes/todo_note.md'
alias reload!='source ~/.zshrc'
alias config='vim ~/.zshrc.pre-oh-my-zsh'
alias topcoder='open /Users/Downloads/apps/ContestAppletProd.jnlp'

# shorcuts
#
function networkpass() {
  security find-generic-password -D "AirPort network password" -a $1 -gw
}

function brium() { 
  curl -d"$@" 'https://brium.me/api/messages?access_token=4a34f4f4518c36ef18111769b96753cdff796ee186d932c0fa6c7702f7eeb55b';
}
function chrome () {
  open -a /Applications/Google\ Chrome.app "$@"
}
function openu () {
  sudo spctl --master-disable; open "$1"; sudo spctl --master-enable
}
function speedtest() {
  wget -O /dev/null http://de.releases.ubuntu.com/12.04.5/ubuntu-12.04.5-alternate-amd64.iso
}
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

# MANAS

## Delete to disable since it only checks that the variable exists, not it's value.
export CEPHEID_DB_PER_BRANCH=1

## go
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

## receiver
testonly () {
  local TEST=$1
  make
  if [ "$?" = "0" ]; then
    PATH_REGEX="*test/$TEST*.erl"
    APP_DIR=$(find apps -path "$PATH_REGEX" | sed -E 's:(apps/[^/]+).*:\1:')
    cd $APP_DIR
    rebar eunit suites=$TEST
    cd -
  fi
}

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
export PATH="/usr/local/sbin:$PATH"

# connect to the university
# function conn_university() {
#   ssh -L 7070:localhost:7070 fjabalera@milagro.dc.uba.ar
#   ssh -D 7070 fjabalera@10.2.4.7
# }
# Despues en tu browser le configuras manualmente
# Servidor SOCKS: localhost puerto: 7070

# De esta forma la conexion de tu browser sale por la facu y ves las paginas de los papers con el acceso de Ministerio como si estuvieses en la facu.

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
