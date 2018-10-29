# Preconditions
cd $HOME

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# set hostname
## ONLY FOR OSX
sudo scutil --set HostName atlantis

## zsh
# look for `which zsh` on the /etc/shells because if it isn't there it will fail
chsh -s $(which zsh)
zsh
ln -s dotfiles/zshrc .zshrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo 'source $HOME/.zshrc.pre-oh-my-zsh' >> $HOME/.zshrc
source ~/.zshrc

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# tmux
ln -s dotfiles/tmux/tmux.conf .tmux.conf

# vim
ln -s dotfiles/vim/vimrc .vimrc
mkdir .vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd .vim
ln -s ../dotfiles/vim/plugins.vim plugins.vim
cd -
# this rm could fail, doesn't matter, it's just to perform the link safely
rm -r .vim/ftplugin
ln -s dotfiles/vim/ftplugin .vim/ftplugin
# base-16 still isn't installed, disregard the message that says that it's not found
vim +PluginInstall +qall

# TODO setup emacs
# ln -s dotfiles/emacs/spacemacs .spacemacs

# git
ln -s dotfiles/git/gitconfig .gitconfig
ln -s dotfiles/git/gitignore_global .gitignore_global

cd $HOME
./dotfiles/bootstrap/brewfile.sh

# tldr
npm install -g tldr
# Install VS Code extensions
extensions=(
    fallenwood.vimL
    vscodevim.vim
    rebornix.ruby
    sleistner.vscode-fileutils
)

for extension in $extensions; do
    code --install-extension $extension
done

# OS specific
./osx/set_defaults.sh
