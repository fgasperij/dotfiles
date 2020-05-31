cd $HOME
DOTFILES=~/repos/dotfiles

# Install zsh
sudo pacman -S zsh
chsh -s $(which zsh)

# zsh
ln -s $DOTFILES/zshrc .zshrc
ln -s $DOTFILES/zprofile .zprofile
# Oh My Zsh
h -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo 'source $HOME/.zshrc.pre-oh-my-zsh' >> $HOME/.zshrc
source ~/.zshrc



git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# tmux
sudo pacman -S tmux
ln -s $DOTFILES/tmux/tmux.conf .tmux.conf

# vim
ln -s $DOTFILES/vim/vimrc .vimrc
mkdir .vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd .vim
ln -s $DOTFILES/vim/plugins.vim plugins.vim
cd -
if [ -e .vim/ftplugin ]; then
    rm -r .vim/ftplugin
else
    echo "No need to remove .vim/ftplugin, it doesn't exist."
fi
ln -s $DOTFILES/vim/ftplugin .vim/ftplugin
# base-16 still isn't installed, disregard the message that says that it's not found
vim +PluginInstall +qall

# git
ln -s $DOTFILES/git/gitconfig .gitconfig
ln -s $DOTFILES/git/gitignore_global .gitignore_global

# xorg
for xconfig_file in xinitrc xprofile Xmodmap; do
    ln -s $DOTFILES/xorg/"${xconfig_file}" ."${xconfig_file}"
