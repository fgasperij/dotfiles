cd $HOME

# set hostname

## ONLY FOR OSX
sudo scutil --set HostName atlantis

## mysql
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
## elasticsearch
ln -sfv /usr/local/opt/elasticsearch/*.plist ~/Library/LaunchAgents
sudo launchctl load ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist
# remove unused
launchctl unload -w /System/Library/LaunchAgents/com.apple.CalendarAgent.plis
killall CalendarAgent

## zsh
# look for `which zsh` on the /etc/shells because if it isn't there it will fail
chsh -s $(which zsh)
zsh
ln -s dotfiles/zshrc .zshrc
source ~/.zshrc
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# tmux
ln -s dotfiles/tmux/tmux.conf .tmux.conf

# vim
ln -s dotfiles/vim/vimrc .vimrc
mkdir .vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cd .vim
ln -s ../dotfiles/vim/plugins.vim plugins.vim
cd -
rm -r .vim/ftplugin
ln -s dotfiles/vim/ftplugin .vim/ftplugin

# TODO setup emacs
# ln -s dotfiles/emacs/spacemacs .spacemacs

# git
ln -s dotfiles/git/gitconfig .gitconfig
ln -s dotfiles/git/gitignore_global .gitignore_global
