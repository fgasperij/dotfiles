tmux has-session -t manas > /dev/null 2>&1
if [ $? != 0 ]
then
  # -n initial window name -d detach
  # C-m carriage-return
  tmux new-session -s manas -n notes -d
  tmux send-keys -t manas:notes 'cd ~/notes' C-m
  tmux send-keys -t manas:notes 'vim manas/buffer.md' C-m
  tmux new-window -n brocoli -t manas
  tmux send-keys -t manas:brocoli 'cd ~' C-m
  tmux select-window -t manas:brocoli
fi
tmux attach -t manas
