tmux has-session -t manas
if [ $? -eq 0 ]
then
  tmux new-window -n reporter -t manas
  tmux split-window -t manas:reporter.1 -v -p 50

  tmux send-keys -t manas:reporter.1 'cd ~/cepheid/cepheid-reporter' C-m
  tmux send-keys -t manas:reporter.2 'cd ~/cepheid/cepheid-reporter' C-m

  tmux send-keys -t manas:reporter.1 './scripts/reset.sh' C-m
  tmux send-keys -t manas:reporter.1 './scripts/gxtool.sh update_guids' C-m
  tmux send-keys -t manas:reporter.1 './gradlew -q runDaemon' C-m

  tmux send-keys -t manas:reporter.2 'sleep 5; ./gradlew runUi' C-m
fi
