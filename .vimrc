set nocompatible
filetype off   

" Vundle setup 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" General utility and navigation
Plugin 'kien/ctrlp.vim'

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Automagic
Plugin 'ervandew/supertab'

" Language support
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jelera/vim-javascript-syntax'

" Colorschemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
Plugin 'tomasr/molokai'
Plugin 'chriskempson/base16-vim'
Plugin 'chriskempson/vim-tomorrow-theme'

call vundle#end()

filetype plugin indent on    " required

" Visual options
set number
set ruler
syntax on

" Searching
set hlsearch
set incsearch

" Filetypes
filetype on

" Indent options
set tabstop=2
set shiftwidth=2
set smartindent
set expandtab

" Mappings




