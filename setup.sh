cd $HOME

# install 

# still haven't found a way to install brew without interaction
brew install wget

# zsh
brew install zsh
chsh -s $(which zsh)
zsh
ln -s dotfiles/zshrc .zshrc

# tmux
brew install tmux
brew install reattach-to-user-namespace

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

# tmux
ln -s dotfiles/tmux.conf .tmux.conf

# git
ln -s dotfiles/gitconfig .gitconfig
ln -s dotfiles/gitignore_global .gitignore_global


# shell
git clone https://github.com/chriskempson/base16-shell.git ~/dotfiles/iterm_themes
# TODO: check this work
# cd ~/dotfiles/iterm_themes
# find . -type d -not -name ".*" -or -not -name "*.sh" -exec rm -rf \;

# OS X


## remove unused

launchctl unload -w /System/Library/LaunchAgents/com.apple.CalendarAgent.plis
killall CalendarAgent
