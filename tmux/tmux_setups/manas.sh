tmux has-session -t manas
if [ $? != 0 ]
then
  # -n initial window name -d detach
  tmux new-session -s manas -n todos -d
  # C-m carriage-return
  tmux send-keys -t manas:1 'todos' C-m
  tmux new-window -n notes -t manas
  tmux send-keys -t manas:2 'cd ~/notes' C-m
  tmux send-keys -t manas:2 'vim manas/buffer.md' C-m
  tmux new-window -n brocoli -t manas
  tmux send-keys -t manas:3 'cd ~/cepheid/cepheid-web' C-m
  tmux select-window -t manas:3
fi
tmux attach -t manas
