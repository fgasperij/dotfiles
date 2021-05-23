# Preconditions
cd $HOME
# Path to the dotfiles repo, example: /User/fgasperi/repos/dotfiles
DOTFILES=$1

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# set hostname
## ONLY FOR OSX
sudo scutil --set HostName apel

## zsh
# look for `which zsh` on the /etc/shells because if it isn't there it will fail
chsh -s $(which zsh)
zsh
ln -s $DOTFILES/zshrc .zshrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo 'source $HOME/.zshrc.pre-oh-my-zsh' >> $HOME/.zshrc
source ~/.zshrc

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# tmux
ln -s dotfiles/tmux/tmux.conf .tmux.conf

# vim
ln -s $DOTFILES/vim/vimrc .vimrc
mkdir .vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd .vim
ln -s $DOTFILES/vim/plugins.vim plugins.vim
cd -
# this rm could fail, doesn't matter, it's just to perform the link safely
rm -r .vim/ftplugin
ln -s dotfiles/vim/ftplugin .vim/ftplugin
# base-16 still isn't installed, disregard the message that says that it's not found
vim +PluginInstall +qall

# setup emacs
ln -s $DOTFILES/emacs/init.el ~/.emacs.d/init.el

# git
ln -s $DOTFILES/git/gitconfig .gitconfig
ln -s $DOTFILES/git/gitignore_global .gitignore_global

cd $HOME

# OS specific
./osx/set_defaults.sh
