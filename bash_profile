export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/Library/TeX/Distributions/Programs/texbin

PS1="%~ $ "

# zsh
autoload -U compinit; compinit
zstyle ':completion:*' menu select # arrow navigation of completion options
setopt auto_cd # directory == cd directory

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# shell config
export EDITOR=vim
set -o vi
bindkey '^R' history-incremental-search-backward

# Base16 Shell
BASE16_SHELL="$HOME/dotfiles/shell_themes/base16-tomorrow.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# aliases
## brium
alias bri='brium'
alias bri\?='brium \?'
## tmux
alias ta='tmux attach -t'
alias ts='tmux new-session -s'
## utilities
alias ll='ls -lah'
alias be='bundle exec'

# notes
source ~/.vim_notes.sh

# shorcuts
function brium() { 
  param=\""$@"\";
  curl -d"$@" 'https://brium.me/api/messages?access_token=4a34f4f4518c36ef18111769b96753cdff796ee186d932c0fa6c7702f7eeb55b';
}
function chrome () {
  open -a /Applications/Google\ Chrome.app "$@"
}
function openu () {
  sudo spctl --master-disable; open "$1"; sudo spctl --master-enable
}
function reload() {
  source ~/.bash_profile
}
function speedtest() {
  wget -O /dev/null http://de.releases.ubuntu.com/12.04.5/ubuntu-12.04.5-alternate-amd64.iso
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
