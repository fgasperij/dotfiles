## tmux
alias ta='tmux attach -t'
alias tms='tmux new-session -s'
alias tk='tmux kill-session -t'

function tst() {
  selected_setup=$1
  shift 1
  ~/dotfiles/tmux/tmux_setups/${selected_setup}.sh $@
}
