tmux has-session -t laleli
if [ $? != 0 ]
then
  tmux new-session -s laleli -n todos -d
  tmux send-keys -t laleli 'todos' C-m

  tmux new-window -n notes -t laleli
  tmux send-keys -t laleli:2.1 '~/notes; vim' C-m
  tmux split-window -v -p 20 -t laleli:2
  tmux send-keys -t laleli:2.2 '~' C-m
  tmux select-window -t laleli:1
fi
tmux attach -t laleli
