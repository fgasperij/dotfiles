export PATH=/usr/local/bin:$PATH:/Users/fgasperijabalera/chromium/depot_tools

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export EDITOR=vim
set -o vi
bindkey '^R' history-incremental-search-backward

# alias
alias be='bundle exec'
alias ll='ls -lah'
alias findrelated='find / -prune -ipath'
alias bri='brium'

# shorcuts
function brium() { 
  param=\""$@"\";
  curl -d"$@" 'https://brium.me/api/messages?access_token=4a34f4f4518c36ef18111769b96753cdff796ee186d932c0fa6c7702f7eeb55b';
}
chrome () {
  open -a /Applications/Google\ Chrome.app "$1"
}
openu () {
  sudo spctl --master-disable; open "$1"; sudo spctl --master-enable
}
todos () {
  NOTES_DIRECTORY=/Users/fgasperijabalera/.vim/bundle/vim-notes/misc/notes/user
  grep -r "TODO" "$NOTES_DIRECTORY" | sed -E 's/.*\/([^/]*):/\1:/'
}

# MANAS
# Delete to disable since it only checks that the variable exists, not it's value.
export CEPHEID_DB_PER_BRANCH=1

# go
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

# receiver
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
