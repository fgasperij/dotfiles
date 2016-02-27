# vim window
tmux new-window -n receiver-vim -t manas
tmux send-keys -t manas:receiver-vim 'cd ~/cepheid/cepheid-receiver' C-m
tmux send-keys -t manas:receiver-vim 'vim' C-m
# split
tmux split-window -t manas:receiver-vim.1 -v -p 20
tmux send-keys -t manas:receiver-vim.2 'cd ~/cepheid/cepheid-receiver' C-m
