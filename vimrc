set nocompatible
filetype off   

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

" ag binding to ack
let g:ackprg = 'ag --nogroup --nocolor --column'

filetype plugin indent on    " required

" ctrlp
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

" Visual options
set ruler
syntax on
" highlight ColorColumn ctermbg=235 guibg=#EBEBEB
" let &colorcolumn=join(range(81,999),",")
set background=dark
set relativenumber
set number

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

""""""""""
" Mappings
""""""""""
let mapleader = "\<Space>"

" shortcuts
nnoremap <leader>w :w<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>wa :wa<cr>
inoremap jk <esc>
nnoremap <leader>h :noh<cr>
" select
nnoremap <leader>v V
" I don't know why these two with the <plug> don't work with 'nore'
vmap v <plug>(expand_region_expand)
vmap <c-v> <plug>(expand_region_shrink)
" copy and paste from clipboard
vnoremap <leader>y "+y
vnoremap <leader>d "+d
nnoremap <leader>p "+p
vnoremap <leader>p "+p
"" search
nnoremap <leader>s :Ag 
nnoremap <leader>c :Ag <cword><cr>
" edit .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>
" move around
nnoremap H 0
nnoremap L $
" edit
nnoremap <leader>o o<esc>
nnoremap <leader><S-o> <S-o><esc>
" NERDTree
map <leader>nt :NERDTreeToggle<CR>
" training wheels
inoremap <esc> <nop>
