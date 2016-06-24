" Vundle setup 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" General utility and navigation
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'bling/vim-airline'
Plugin 'padde/jump.vim'

" Automagic
Plugin 'ervandew/supertab'
Plugin 'terryma/vim-expand-region'

" Language support
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'burnettk/vim-angular'
Plugin 'scrooloose/syntastic'
Plugin 'dag/vim2hs'
Plugin 'sukima/xmledit'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" String manip
Plugin 'tpope/vim-abolish'

" Code manip
Plugin 'tpope/vim-commentary'

" colorschemes
Plugin 'chriskempson/base16-vim'
Plugin 'juanedi/predawn.vim'

" git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Filemanip
Plugin 'danro/rename.vim'

" tmux
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()
