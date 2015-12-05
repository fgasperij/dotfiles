BRANCH_NAME=v2.1.5
if [ $# -gt 0 ]; then
  BRANCH_NAME=$1
fi
# vim window
tmux new-window -n web-vim -t manas
tmux send-keys -t manas:web-vim 'j web' C-m
tmux send-keys -t manas:web-vim 'vim' C-m
# web server
tmux new-window -n web-server -t manas
tmux send-keys -t manas:web-server 'j web' C-m
tmux send-keys -t manas:web-server "git checkout $BRANCH_NAME" C-m
tmux send-keys -t manas:web-server '../start_web_server.sh' C-m
