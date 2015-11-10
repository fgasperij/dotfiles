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

" Colorschemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
Plugin 'tomasr/molokai'
Plugin 'chriskempson/base16-vim'
Plugin 'chriskempson/vim-tomorrow-theme'

" git
Plugin 'tpope/vim-fugitive'

" Filemanip
Plugin 'danro/rename.vim'

" Notes
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'

call vundle#end()
