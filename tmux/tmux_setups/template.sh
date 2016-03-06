tmux has-session -t development
if [ $? != 0 ]
then
  # -n initial window name -d detach
  tmux new-session -s development -n editor -d
  # C-m carriage-return
  tmux send-keys -t development 'j web' C-m
  tmux send-keys -t development 'vim' C-m
  tmux split-window -v -p 10 -t development
  # session:window.pane
  tmux send-keys -t development:1.2 'j  web' C-m
  tmux new-window -n console -t development
  tmux send-keys -t development:2 'j web' C-m
  tmux select-window -t development:1
fi
tmux attach -t development
