cd $HOME

# vim
ln -s dotfiles/vim/vimrc .vimrc
ln -s dotfiles/vim/plugins.vim .vim/plugins.vim

# bash
ln -s dotfiles/bash_profile .bash_profile
ln -s dotfiles/vim_notes .vim_notes

# tmux
ln -s dotfiles/tmux .tmux.conf

# shell
git clone https://github.com/chriskempson/base16-shell.git ~/dotfiles/iterm_themes
# TODO: check this work
cd ~/dotfiles/iterm_themes
find . -type d -not -name ".*" -or -not -name "*.sh" -exec rm -rf \;

# OS X

## install 

brew install wget

## remove unused

launchctl unload -w /System/Library/LaunchAgents/com.apple.CalendarAgent.plis
killall CalendarAgent
