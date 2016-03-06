tmux has-session -t competitive
if [ $? != 0 ]
then
  tmux new-session -s competitive -n vim -d
  # vim window
  tmux send-keys -t competitive:1 'j competitive' C-m
  tmux send-keys -t competitive:1.1 'vim' C-m
  tmux split-window -t competitive:1.1 -v -p 20
  tmux send-keys -t competitive:1.2 'j competitive' C-m
  # notes window
  tmux new-window -n notes -t competitive
  tmux send-keys -t competitive:2 '~/notes' C-m
  tmux send-keys -t competitive:2 'vim' C-m

  tmux select-window -t competitive:1
fi
tmux attach -t competitive
