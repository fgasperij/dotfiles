tmux has-session -t laleli
if [ $? != 0 ]
then
  tmux new-session -s laleli -n notes -d
  tmux send-keys -t laleli:notes.1 '~/notes; vim' C-m
  tmux split-window -v -p 20 -t laleli:2
  tmux send-keys -t laleli:notes.2 '~' C-m
fi
tmux attach -t laleli
